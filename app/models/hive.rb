class Hive < ActiveRecord::Base
  has_many :boxes
  after_create :init
  has_one :calendar
  attr_accessible :name, :swarming

  def add_box
    Box.create(hive_id: self.id)
  end

  def add_calendar
    Calendar.create(hive_id: self.id)
  end

  def init
    2.times do
      add_box
    end
    add_calendar
    allocate_bees(2000)
    self.swarming = false
  end

  def honey
    self.boxes.all.reduce(0) do |hive_total, box|
      hive_total + box.honey
    end
  end

  def bees
    self.boxes.all.reduce(0) do |hive_total, box|
      hive_total + box.bees
    end
  end

  def queencells
    self.boxes.all.reduce(0) do |hive_total, box|
      hive_total + box.queencells.count
    end
  end

  def advance_time
    unless self.calendar.season_over? 
      self.calendar.advance_time
      @fullness = self.fullness
      self.boxes.each do |b|
        b.advance_time(@fullness)
      end
      make_honey
      grow_bees
    end
  end

  def end_swarm
    clear_hive_of_queencells
    self.swarming = false 
  end
  
#  protected

  def allocate_bees(bees)
    self.boxes.each do |box|
      box.bees = bees / self.boxes.count
      box.save
    end
  end

  def allocate_honey(honey)
    self.boxes.each do |box|
      box.honey = honey / self.boxes.count
      box.save
    end
  end
  
  def grow_bees
    allocate_bees(self.bees * 1.618) # approx. phi
    swarm if time_to_swarm?
  end

  def make_honey
    hon = self.bees * 0.0001 * fullness
    allocate_honey(self.honey + hon)
  end

  def time_to_swarm?
    self.boxes.each do |box|
      if box.time_to_swarm?
        return true
      end
    end
    false
  end

  def swarm
    allocate_bees(self.bees / 2)
    allocate_honey(self.honey / 2)
    self.swarming = true
  end

  def fullness
    f = self.bees / (self.boxes.count * 25000.0) 
    (1 - 1 / f).abs
  end

  def clear_hive_of_queencells
    self.boxes.each do |box|
      box.clear_queencells
    end
  end

end


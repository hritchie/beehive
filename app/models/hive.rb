class Hive < ActiveRecord::Base
  has_many :boxes
  after_create :init
  has_one :calendar

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
  end

  def honey
    self.boxes.all.reduce(0) do |hive_total, box|
      hive_total + box.honey
    end
  end
end

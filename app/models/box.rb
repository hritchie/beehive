class Box < ActiveRecord::Base
  validates :hive_id, presence: true
  attr_accessible :bees, :honey, :hive_id
  has_many :queencells
  before_create :init

  def init
    self.bees = 0
    self.honey = 0
  end

  def advance_time(fullness)
    add_queencell if queencell_probable?(fullness)
    advance_all_queencells
  end

  def add_queencell 
    Queencell.create(box_id: self.id)
  end

  def advance_all_queencells
    unless self.queencells.nil?
      self.queencells.each do |q|
        q.advance_time
      end
    end
  end

  def queencell_probable?(fullness)
    fullness * Random.rand(65) > 50
  end

end

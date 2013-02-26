class Box < ActiveRecord::Base
  validates :hive_id, presence: true
  attr_accessible :bees, :honey, :hive_id
  has_many :queencells
  before_create :init

  def init
    self.bees = 0
    self.honey = 0
  end
end

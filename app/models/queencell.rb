class Queencell < ActiveRecord::Base
  validates :box_id, presence: true
  attr_accessible :age, :box_id
  before_create :init

  def init
    self.age = 1
  end


  def advance_time 
    self.age +=1
    self.save
  end
end

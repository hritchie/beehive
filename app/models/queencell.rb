class Queencell < ActiveRecord::Base
  validates :box_id, presence: true
  validates :age, :numericality => { :greater_than_or_equal_to => 0 }
  attr_accessible :age, :box_id
end

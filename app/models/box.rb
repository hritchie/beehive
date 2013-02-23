class Box < ActiveRecord::Base
  validates :hive_id, presence: true
  attr_accessible :bees, :honey, :hive_id
end

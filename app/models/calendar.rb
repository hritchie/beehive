class Calendar < ActiveRecord::Base
  belongs_to :hive
  validates :hive_id, presence: true
  attr_accessible :week, :hive_id
end

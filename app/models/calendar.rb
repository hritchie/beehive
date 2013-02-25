class Calendar < ActiveRecord::Base
  belongs_to :hive
  attr_accessible :week
end

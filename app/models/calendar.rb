class Calendar < ActiveRecord::Base
  belongs_to :hive
  after_create :init
  validates :hive_id, presence: true
  attr_accessible :week, :hive_id

  def init
    self.week = 1
  end
end

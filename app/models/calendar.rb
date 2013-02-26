class Calendar < ActiveRecord::Base
  belongs_to :hive
  before_create :init
  validates :hive_id, presence: true
  attr_accessible :week, :hive_id


  def init
    self.week = 1
  end

  def advance_time
    unless season_over? 
      self.week += 1
      self.save
    end
  end

  def season_over?
    self.week >=20
  end
end

class Hive < ActiveRecord::Base
  has_many :boxes
  after_create :init

  def add_box
    Box.create(hive_id: self.id)
  end

  def init
    2.times do
      add_box
    end
  end

end

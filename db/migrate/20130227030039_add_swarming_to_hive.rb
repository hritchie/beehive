class AddSwarmingToHive < ActiveRecord::Migration
  def change
    add_column :hives, :swarming, :boolean
  end
end

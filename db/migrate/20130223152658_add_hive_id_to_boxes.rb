class AddHiveIdToBoxes < ActiveRecord::Migration
  def change
    add_column :boxes, :hive_id, :integer
  end
end

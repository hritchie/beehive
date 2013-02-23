class AddBoxIdToHives < ActiveRecord::Migration
  def change
    add_column :hives, :box_id, :integer
  end
end

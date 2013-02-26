class AddNameToHives < ActiveRecord::Migration
  def change
    add_column :hives, :name, :string
  end
end

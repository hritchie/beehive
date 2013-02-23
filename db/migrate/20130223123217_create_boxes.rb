class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.integer :bees
      t.integer :honey

      t.timestamps
    end
  end
end

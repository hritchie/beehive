class CreateHives < ActiveRecord::Migration
  def change
    create_table :hives do |t|

      t.timestamps
    end
  end
end

class CreateQueencells < ActiveRecord::Migration
  def change
    create_table :queencells do |t|
      t.integer :age
      t.integer :box_id

      t.timestamps
    end
  end
end

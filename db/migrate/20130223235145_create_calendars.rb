class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.integer :week
      t.integer :hive_id

      t.timestamps
    end
  end
end

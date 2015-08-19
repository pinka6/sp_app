class CreateSubEvents < ActiveRecord::Migration
  def change
    create_table :sub_events do |t|
      t.string :event_id
      t.string :name
      t.datetime :from_date
      t.datetime :to_date

      t.timestamps null: false
    end
  end
end

class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :public_id
      t.integer :client_id
      t.string :name
      t.string :event_type
      t.string :location
      t.integer :occasional_client_id
      t.date :from_date
      t.date :to_date
      t.integer :nights
      t.integer :participants_num
      t.integer :agent_id
      t.integer :client_invoice

      t.timestamps null: false
    end
  end
end

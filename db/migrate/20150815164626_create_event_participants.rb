class CreateEventParticipants < ActiveRecord::Migration
  def change
    create_table :event_participants do |t|
      t.integer :participant_id
      t.integer :total_participants
      t.integer :paid
      t.integer :total_cost
      t.integer :debt
      t.integer :receipt
      t.integer :invoice
      t.text :note

      t.timestamps null: false
    end
  end
end

class CreateSubEventParticipants < ActiveRecord::Migration
  def change
    create_table :sub_event_participants do |t|
      t.integer :participant_id
      t.integer :sub_event_id
      t.integer :adult_num
      t.integer :child_num
      t.integer :infant_num
      t.date :dates
      t.string :room
      t.string :more_names
      t.integer :total_cost

      t.timestamps null: false
    end
  end
end

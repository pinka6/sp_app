class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.integer :contact_id
      t.string :degree
      t.string :position
      t.string :job

      t.timestamps null: false
    end
  end
end

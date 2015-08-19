class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :contact_id
      t.string :status
      t.integer :agent_id
      t.integer :int_contact_id

      t.timestamps null: false
    end
  end
end

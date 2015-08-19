class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.integer :contact_id
      t.string :position

      t.timestamps null: false
    end
  end
end

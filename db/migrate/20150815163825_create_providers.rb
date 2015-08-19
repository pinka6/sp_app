class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.integer :contact_id
      t.integer :int_contact_id
      t.string :position
      t.string :status
      t.string :region

      t.timestamps null: false
    end
  end
end

class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :public_id
      t.string :name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :country
      t.string :zip
      t.string :phone
      t.string :mobile
      t.string :fax
      t.string :email

      t.timestamps null: false
    end
  end
end

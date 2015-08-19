class CreateEventExpenses < ActiveRecord::Migration
  def change
    create_table :event_expenses do |t|
      t.integer :event_id
      t.string :provider_service
      t.integer :amount
      t.integer :price
      t.integer :total_price
      t.integer :paid
      t.integer :provider_incoive

      t.timestamps null: false
    end
  end
end

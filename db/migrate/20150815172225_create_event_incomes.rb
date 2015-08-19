class CreateEventIncomes < ActiveRecord::Migration
  def change
    create_table :event_incomes do |t|
      t.integer :event_id
      t.string :description
      t.integer :amount
      t.integer :price
      t.integer :total_price
      t.integer :amount_paid

      t.timestamps null: false
    end
  end
end

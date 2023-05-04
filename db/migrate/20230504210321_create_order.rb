class CreateOrder < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.string :shipping_address
      t.string :phone_number
      t.string :payment_method
      t.decimal :bill

      t.timestamps
    end
  end
end

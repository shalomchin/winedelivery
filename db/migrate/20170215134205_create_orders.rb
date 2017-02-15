class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.text :address
      t.text :contact
      t.integer :qty1
      t.integer :qty2
      t.integer :totalprice

      t.timestamps
    end
  end
end

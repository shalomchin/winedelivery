class AddContactToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :contact, :string
  end
end

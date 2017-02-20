class AddProductImageToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :product_image, :string
  end
end

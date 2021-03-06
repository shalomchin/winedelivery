class Order < ApplicationRecord
 validates :qty1, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
 validates :qty2, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
 validates :name, presence: true
 validates :address, presence: true
 validates :contact, presence: true
 validates_format_of :contact, :with => /[1-9]+/
 
 mount_uploader :product_image, ProductImageUploader

 def calculate_total_price
  (qty1.to_i * 40 ) + (qty2.to_i * 35)
 end


end

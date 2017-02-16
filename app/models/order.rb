class Order < ApplicationRecord
 validates :name, presence: true
 validates :address, presence: true
 validates :contact, presence: true
 validates_format_of :contact, :with => /[1-9]+/
  def calculate_total_price
    (qty1.to_i * 10 ) + (qty2.to_i * 10)
  end

end

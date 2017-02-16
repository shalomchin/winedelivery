class Order < ApplicationRecord

	def calculate_total_price
		(qty1.to_i * 10 ) + (qty2.to_i * 10)
	end
end

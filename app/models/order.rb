class Order < ApplicationRecord
	belongs_to :customer
	has_many :lineitems
	
	def add_lineitems_from_cart(cart)
		cart.lineitems.each do |item|
			item.cart_id = nil
			lineitems << item
		end
	end
	
	def total_price(order)
		order.total = order.lineitems.inject(0){|sum, p| sum + (p.product.price * p.quantity)}
	end
end

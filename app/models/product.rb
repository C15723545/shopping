class Product < ApplicationRecord
	has_many :lineitems
	
	def self.search(query)
		where("title LIKE ?", "%#{query}%")
	end
	
end

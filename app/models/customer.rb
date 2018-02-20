class Customer < ApplicationRecord
    has_secure_password
    validates :name, presence: :true
	has_many :orders
end

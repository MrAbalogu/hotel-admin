class Customer < ApplicationRecord
	has_many :bill_containers
	has_many :book_rooms
	has_many :room_customers
	has_many :rooms, :through => :room_customers

	def self.desc_order
		order("created_at DESC")
	end 
end

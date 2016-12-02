class Room < ApplicationRecord
	has_many :customer_rooms
	belongs_to :room_category

	def self.asc_order
		order("created_at ASC")
	end 
end
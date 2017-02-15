class Room < ApplicationRecord
	belongs_to :room_category

	def self.asc_order
		order("created_at ASC")
	end 
end
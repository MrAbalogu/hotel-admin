class Room < ApplicationRecord
	has_many :customer_rooms
	belongs_to :room_category
end
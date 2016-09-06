class Room < ApplicationRecord
	has_many :customer_rooms
	has_many :book_rooms
	belongs_to :room_category
end
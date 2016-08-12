class RoomCustomer < ApplicationRecord
  belongs_to :room
  belongs_to :book_room
end

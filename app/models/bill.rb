class Bill < ApplicationRecord
  belongs_to :bill_container
  after_create :add_details
  after_update :add_to_extended_days

  def self.desc_order
    order("created_at DESC")
  end 

  def add_details
    self.update_columns :paid => false 
  end 	

  def add_to_extended_days 
  	self.update_columns :bill_price => self.days * self.room_price
  	bill_cont = BillContainer.find self.bill_container_id
  	book_room = BookRoom.where(room: bill_cont.room_id, customer_id: bill_cont.customer_id, checked_out: false).first
  	book_room.update_columns :days => self.days, :total => self.bill_price
  end 	
end

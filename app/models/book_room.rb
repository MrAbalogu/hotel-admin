class BookRoom < ApplicationRecord
  belongs_to :customer
  has_many :room_customers
  has_many :rooms, :through => :room_customers
  after_create :add_customer_details, :add_room_number_and_details, :create_customer_room
  after_update :add_dynamic_change

  def self.desc_order
    order("created_at DESC")
  end 

  def add_customer_details 
  	customer = Customer.find self.customer_id 
  	self.first_name = customer.first_name
  	self.last_name = customer.last_name
  	self.phone_number = customer.phone_number
    self.checked_out = false
  	self.save 
  end 

  def create_customer_room 
    customer_room = CustomerRoom.create  
    customer_room.room_id = self.room_number
    customer_room.first_name = self.first_name
    customer_room.last_name = self.last_name
    customer_room.phone_number = self.phone_number
    customer_room.save 
  end   

  def add_room_number_and_details 
  	room = Room.find self.room
  	self.room_number = room.room_number
  	self.save 
    room.availability = false
    room.save 
  end 	

  def add_dynamic_change
    room = Room.find self.room
    room.availability = false
    room.save
  end   
  	
end

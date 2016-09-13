class BookRoom < ApplicationRecord
  belongs_to :customer
  belongs_to :rooms
  after_create :add_details
  after_update :add_dynamic_change
  validates :room, presence: true
  validates :days, presence: true
  validates :deposit, presence: true

  def self.desc_order
    order("created_at DESC")
  end 

  private 

  def add_details 
    customer = Customer.find self.customer_id 
    room = Room.find self.room
    if self.discount == nil 
      self.update_columns :customer_first_name => customer.first_name, :customer_last_name => customer.last_name, 
                          :phone_number => customer.phone_number, :checked_out => false,
                          :room_number => room.room_number, :room_price => room.room_category.price,
                          :room_id => self.room, :bill_price => room.room_category.price * self.days 
      room.update_column :availability, false 
      # Create Bill container 
      bill_cont = customer.bill_containers.create
      bill_cont.name = self.room_number
      bill_cont.paid = false
      bill_cont.room_id = self.room
      bill_cont.save
    # Create Bill  
      bill = bill_cont.bills.create
      bill.days = self.days 
      bill.deposit = self.deposit 
      bill.room_price = self.room_price
      bill.bill_price = bill.room_price * bill.days
      bill.save
    elsif self.discount == true 
      self.update_columns :customer_first_name => customer.first_name, :customer_last_name => customer.last_name, 
                          :phone_number => customer.phone_number, :checked_out => false,
                          :room_number => room.room_number, :room_price => room.room_category.price - 1500,
                          :room_id => self.room, :bill_price => (room.room_category.price - 1500) * self.days
      room.update_column :availability, false 
      # Create Bill container 
      bill_cont = customer.bill_containers.create
      bill_cont.name = self.room_number
      bill_cont.paid = false
      bill_cont.room_id = self.room
      bill_cont.save
      # Create Bill 
      bill = bill_cont.bills.create
      bill.days = self.days 
      bill.deposit = self.deposit 
      bill.room_price = self.room_price
      bill.bill_price = bill.room_price * bill.days
      bill.save
    end   
  end 

  def add_dynamic_change
    room = Room.find self.room
    room.update_columns :availability => true, :neatness => false
  end   
end

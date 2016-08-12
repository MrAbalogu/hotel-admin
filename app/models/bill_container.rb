class BillContainer < ApplicationRecord
  belongs_to :customer
  has_many :bills
  after_create :add_details 

  def self.desc_order
    order("created_at DESC")
  end 

  def add_details 
  	customer = Customer.find self.customer_id
  	self.first_name = customer.first_name
  	self.last_name = customer.last_name
  	self.paid = false 
  	self.save 
  end 	
end

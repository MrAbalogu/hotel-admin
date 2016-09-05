class Bill < ApplicationRecord
  belongs_to :bill_container
  after_create :add_details
  # validates :deposit, presence: true
  # validates :bill_name, presence: true
  # validates :bill_price, presence: true

  def add_details
  	self.paid = false
  	self.save 
  end 	
end

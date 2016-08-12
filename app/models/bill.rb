class Bill < ApplicationRecord
  belongs_to :bill_container
  after_create :add_details

  def add_details
  	self.paid = false
  	self.save 
  end 	
end

class CustomerMailer < ApplicationMailer
  def checkout(customer)
  	@customer = customer 
  	mail(to: @customer.email, subject: "Benny Hotel appreciates your stay")
  end 	
end

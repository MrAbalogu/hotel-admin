class RoomCustomersController < ApplicationController

  private 

  def room_customer_params 
  	params.require(:room_customer).permit(:check_out, :room)
  end 	
		
end

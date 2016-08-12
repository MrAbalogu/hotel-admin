class BookRoomsController < ApplicationController
  before_action :set_book_room, only: [:show, :edit, :update]

  def index 
    @search = BookRoom.ransack(params[:q]) 
    @book_rooms = @search.result(distinct: true).desc_order
  end   

  def show
  end   
  
  def create 
  	@customer = Customer.find(params[:customer_id]) 
  	@customer_room = @customer.book_rooms.create(book_rooms_params)
  	flash[:notice] = "Customer has been added to room"
  	redirect_to customer_path(@customer)
  end 

  def destroy 
  	@customer = Customer.find(params[:customer_id]) 
  	@customer_room = @customer.book_rooms.find(params[:id])
  	@customer_room.destroy
  	flash[:notice] = "Customer room has been deleted"
  	redirect_to customer_path(@customer)
  end 

  def edit 
  end  

  def update 
    @book_room.update(book_rooms_params)
    redirect_to @book_room
    flash[:notice] = "Customer has checked out"
  end   

  private 

  def set_book_room
    @book_room = BookRoom.find(params[:id])
  end   

  def book_rooms_params 
  	params.require(:book_room).permit(:room, :first_name, :last_name, :phone_number, :checked_out)
  end 

end

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
    @customer = Customer.find @book_room.customer_id
    @book_room.update(book_rooms_params)
    bill_container = BillContainer.where(room_id: @book_room.room_id).first
    redirect_to bill_container_path(bill_container.id) 
    flash[:notice] = "Customer has checked out. Ensure you check customer bill before checking him out"
  end   

  private 

  def set_book_room
    @book_room = BookRoom.find(params[:id])
  end   

  def book_rooms_params 
  	params.require(:book_room).permit(:room, :customer_first_name, :customer_last_name, :phone_number, :checked_out, :days, :deposit, :room_price, :rollback)
  end 

end

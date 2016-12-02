class BookRoomsController < ApplicationController
  before_action :set_book_room, only: [:show, :edit, :update]

  def index 
    @search = BookRoom.ransack(params[:q]) 
    @book_rooms = @search.result(distinct: true).paginate(page: params[:page], per_page: 30).desc_order
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
    bill_container = BillContainer.where(customer_id: @customer).last
    redirect_to bill_container_path(bill_container) 
    flash[:notice] = "Customer has checked out. Ensure you check customer bill before checking him out"
  end   

  private 

  def set_book_room
    @book_room = BookRoom.find(params[:id])
  end   

  def book_rooms_params 
  	params.require(:book_room).permit(:room, :customer_first_name, :customer_last_name, :phone_number, 
                                      :checked_out, :days, :deposit, :room_price, :rollback, :discount, 
                                      :disc_amount, :room2, :room3, :room4, :room5, :room6, :room7, 
                                      :room8, :room9, :room10, :midnight)
  end 

end

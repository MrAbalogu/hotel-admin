class PagesController < ApplicationController
  def home
  	@customer = Customer.new

  	# Search Customer query
  	@search = Customer.ransack(params[:q]) 
    @c = @search.result(distinct: true).desc_order.limit(1)

    # Get all rooms 
    @rooms = Room.all
    # Get all Room Categories
    @room_types = RoomCategory.all

    # Limit bookings and bills queries to 10
    @recent_bookings = BookRoom.all.order("created_at DESC").limit(10)
    @recent_bookings_expand = BookRoom.all.order("created_at DESC").limit(20)
    # require 'pry'; binding.pry
    @recent_bills = BillContainer.all.order("created_at DESC").paginate(page: params[:page], per_page: 10)
    @recent_bills_expand = BillContainer.all.order("created_at DESC").limit(20)

    # Search Bills query
    @search1 = BillContainer.ransack(params[:q]) 
    # @bill_conts = @search1.result(distinct: true).desc_order 

    #  Search Booked rooms query 
    @search2 = BookRoom.ransack(params[:q]) 
    @bill_conts = @search2.result(distinct: true).desc_order
  end

  def bill_chart 
    @search = BillContainer.ransack(params[:q]) 
    @bill_conts = @search.result(distinct: true).order("created_at DESC")
  end   

  def daily_chart
    @search = BookRoom.ransack(params[:q]) 
    @book_rooms = @search.result(distinct: true).order("created_at DESC")
  end   

  def dirty_rooms
    @rooms = Room.all
  end   

  def bin
    @book_rooms = BookRoom.all 
    @bill_conts = BillContainer.all
  end  
end

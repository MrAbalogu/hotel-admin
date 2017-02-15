class PagesController < ApplicationController
  def admin
  	@customers = Customer
    yesterday = Time.now - 1.day
    @books_today = BookRoom.where("created_at >= ?", Time.zone.now.beginning_of_day)
    @books_yday = BookRoom.where(["created_at >= ? AND created_at <= ?", 
                                 yesterday.beginning_of_day, yesterday.end_of_day])
    @deposit_today = Bill.where("created_at >= ?", Time.zone.now.beginning_of_day)
    @deposit_yday = Bill.where(["created_at >= ? AND created_at <= ?", 
                                 yesterday.beginning_of_day, yesterday.end_of_day])

    @recent_bookings = BookRoom.where(rollback: nil, checked_out: false).desc_order
    # require 'pry'; binding.pry
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

class BillsController < ApplicationController
  before_action :set_bill, only: [:show, :edit, :update, :destroy]

  def index
    @search = Bill.ransack(params[:q]) 
    @bills = @search.result(distinct: true).desc_order 
  end   

  def edit 
  end   

  def update 
    @bill.update(bills_params)
    @bill_cont = BillContainer.find(@bill.bill_container_id) 
    redirect_to @bill_cont
    flash[:notice] = "Days have been extended"
  end 
 
  def create 
  	@bill_cont = BillContainer.find(params[:bill_container_id]) 
  	@bill_bill_cont = @bill_cont.bills.create(bills_params)
  	flash[:notice] = "Bill has been added to customer"
  	redirect_to bill_container_path(@bill_cont)
  end

  def destroy 
    @bill.destroy
    flash[:notice] = "Bill has been deleted"
  end 	

  private 

  def set_bill
  	@bill = Bill.find(params[:id])
  end 	

  def bills_params 
  	params.require(:bill).permit(:bill_name, :bill_price, :deposit, :paid, :room_price, :days, :receipt_no)
  end 	
  	
end
class BillsController < ApplicationController
  before_action :set_bill, only: [:show, :edit, :update]

  def create 
  	@bill_cont = BillContainer.find(params[:bill_container_id]) 
  	@bill_bill_cont = @bill_cont.bills.create(bills_params)
  	flash[:notice] = "Bill has been added to customer"
  	redirect_to bill_container_path(@bill_cont)
  end

  def destroy 
  	@bill_cont = BillContainer.find(params[:bill_container_id]) 
    @bill_bill_cont = @bill_cont.bills.destroy
    flash[:notice] = "Bill has been deleted"
    redirect_to bill_container_path(@bill_cont)
  end 	

  private 

  def set_bill
  	@bill = Bill.find(params[:id])
  end 	

  def bills_params 
  	params.require(:bill).permit(:bill_name, :bill_price, :deposit, :paid)
  end 	
  	
end

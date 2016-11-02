class BillContainersController < ApplicationController
  before_action :set_bill_cont, only: [:show, :edit, :update, :destroy]

  def index
  	@search = BillContainer.ransack(params[:q]) 
    @bill_conts = @search.result(distinct: true).paginate(page: params[:page], per_page: 30).desc_order 
  end 	

  def unpaid
    @search = BillContainer.ransack(params[:q]) 
    @bill_conts = @search.result(distinct: true).desc_order
  end  

  def show
    @mybills = @bill_cont.bills.order("created_at DESC")
    @credit = @bill_cont.bills.sum(:bill_price)
    @deposit = @bill_cont.bills.sum(:deposit)
    @balance = @deposit - @credit 
  end   

  def edit 
  end 	

  def create 
  	@customer = Customer.find(params[:customer_id]) 
  	@customer_bill_cont = @customer.bill_containers.create(bill_cont_params)
  	flash[:notice] = "Bill Container has been added to customer"
  	redirect_to customer_path(@customer)
  end

  def update 
  	@bill_cont.update(bill_cont_params)
  	redirect_to @bill_cont
  	flash[:notice] = "Customer has paid"
  end 	

  def destroy 
    @bill_cont.destroy
    flash[:notice] = "Bill has been deleted"
    redirect_to @bill_cont
  end  

  private 

  def set_bill_cont
  	@bill_cont = BillContainer.find(params[:id])
  end 	

  def bill_cont_params 
  	params.require(:bill_container).permit(:name, :paid, :customer_first_name, :customer_last_namer, :room_id, :rollback)
  end 
end

class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

  def index 
    @users = User.all
  end   

  def show
    @user = User.find(params[:id])
  end
  
  def update 
    @user.update(user_params)
    redirect_to @user
  end   

  def destroy
  end

  private

    def set_user
      @user = User.find(params[:id])
    end  

    def user_params
      params.require(:user).permit(:username, :password, :first_name, :last_name)
    end
end

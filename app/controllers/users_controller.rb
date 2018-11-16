class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @services = Service.all
    #@service = Service.find(service_params[:id])
    # @ad = Ad.new
    # @ads = Ad.all
    # @handies = Handy.all
    #@handy = Handy.find(params[:id])
  end

  # def welcome
  #   @user = User.find(params[:id])
  # end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
     @user.save
    redirect_to @user

  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password)
  end

end

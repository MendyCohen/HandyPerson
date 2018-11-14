class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @services = Service.all
    #@service = Service.find(service_params[:id])
    @ad = Ad.new
    @ads = Ad.all
    @handies = Handy.all
    #@handy = Handy.find(params[:id])
  end
end

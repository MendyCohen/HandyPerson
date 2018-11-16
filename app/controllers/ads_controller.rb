class AdsController < ApplicationController

   # def index
   #   @ads = Ad.all
   #   @users = User.all
   # end

  def show
    @ad = Ad.find(params[:id])
    #@user = User.find(params[:user_id])
    #@service = Service.find(params[:service_id])
    # @handyservices = HandyService.all
    # @hps = HandyService.all
    @ads = Ad.all

    @services = Service.all
    @handyservice = HandyService.new
    @handyservices = HandyService.all
    @handy = Handy.new
    @handies = Handy.all
    #@handyfind = Handy.find(params[:id])
    @user = User.find(params[:user_id])
  end




  def new
    @ad = Ad.new
    @services = Service.all
    @handies = Handy.all
    @users = User.all
  end

  def create
    # byebug
    @user = User.find(params[:user_id])
    @ad = Ad.new(ad_params)
    @ad.save
    redirect_to user_ad_path(@user, @ad)
  end

  def edit
    @ad = Ad.find(params[:id])
  end

  def update
    @ad = Ad.find(params[:id])
    @ad.update(add_update_params)
    redirect_to user_ad_path
  end

  private

  def ad_params
    params.permit(:user_id, :service_id, :handy_id, :rating)
  end

  def add_update_params
    params.require("/users/#{params[:id]}").permit(:rating)
  end

end

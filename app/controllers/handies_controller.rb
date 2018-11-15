class HandiesController < ApplicationController

  def index
    @handies = Handy.all
  end

  def show
    @handy = Handy.find(params[:id])
    @services = Service.all
    @handyservice = HandyService.new
    @handyservices = HandyService.all
    @user = User.find(params[:user_id])
    @service = Service.find(params[:service_id])
  end
end

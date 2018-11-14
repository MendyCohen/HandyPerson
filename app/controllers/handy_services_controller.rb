class HandyServicesController < ApplicationController

  def new
    @handyservice = HandyService.new
  end

  def create
    @handyservice = HandyService.new(handyservice_params)
    @handyservice.save
    @handy = Handy.find(handyservice_params[:handy_id])
    redirect_to @handy
  end

  private

  def handyservice_params
    params.require(:handy_service).permit(:handy_id, :service_id)
  end
end

class HandyServicesController < ApplicationController

  def new
    @handyservice = HandyService.new
  end

  def create
    @handyservice = HandyService.new(handyservice_params)
    @handyservice.save
    redirect_to handy_path(@handy)
  end

  private

  def handyservice_params
    params.require(:handy_service).permit(:handy_id, :service_id)
  end
end

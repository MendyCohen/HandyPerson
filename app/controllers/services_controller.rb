class ServicesController < ApplicationController

  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  #private

  # def service_params
  #   params.require(:service).permit(:name, :id)
  # end
end

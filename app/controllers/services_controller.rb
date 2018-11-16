class ServicesController < ApplicationController

  def index
    @services = Service.all
    @user = User.find(params[:user_id])
  end

  def show
    @service = Service.find(params[:id])
    @user = User.find(params[:user_id])
  end

  private

   def service_params
     params.require(:service).permit(:name, :id)
   end
end

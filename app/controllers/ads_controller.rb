class AdsController < ApplicationController

  # def index
  #   @ads = Ad.all
  # end

  def show
    @ad = Ad.find(params[:id])
    # @handyservices = HandyService.all
    # @hps = HandyService.all
    @ads = Ad.all

    @services = Service.all
    @handyservice = HandyService.new
    @handyservices = HandyService.all
    @handy = Handy.new
    @handies = Handy.all
    @handyfind = Handy.find(params[:id])
  end




  def new
    @ad = Ad.new
    @services = Service.all
    @handies = Handy.all
    @users = User.all
  end

  def create
    @ad = Ad.new(ad_params)
    @ad.save
  end

  private

  def ad_params
    params.require(:ad).permit(:user_id, :service_id)
  end

end


# <ol>
#   <% @ads.map do |ad| %>
#     <% ad.service.handies.select do |handy| %>
#       <li><%= handy.name %></li>
#     <% end %>
#   <% end %>
# </ol>
#
# <%= form_for @ad do |f| %>
#   <%= f.hidden_field :handy_id, value: @handy.id %>
#   <%= f.collection_select :service_id, @services, :id, :name %><br>
#   <%= f.submit %>
# <% end %>

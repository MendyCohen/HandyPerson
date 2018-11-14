class Ad < ApplicationRecord
  belongs_to :user
  belongs_to :service
  belongs_to :handy

  def customer
    user
  end

  # def contractor
  #   service.handies.each do |handy|
  #     handy
  #   end
  # end

  def job
    service
  end

end

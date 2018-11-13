class Handy < ApplicationRecord
  has_many :handy_services
  has_many :services, through: :handy_services

  def handywork
    services
  end
end

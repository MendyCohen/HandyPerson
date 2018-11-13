class Service < ApplicationRecord
  has_many :handy_services
  has_many :handies, through: :handy_services
  has_many :ads
  has_many :users, through: :ads

  def workers
    handies
  end
end

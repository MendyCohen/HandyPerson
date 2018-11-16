class Handy < ApplicationRecord
  has_many :handy_services
  has_many :services, through: :handy_services
  has_many :ads
  has_many :users, through: :ads

  

end

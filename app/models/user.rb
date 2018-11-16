class User < ApplicationRecord
  has_many :ads
  has_many :services, through: :ads
  has_many :handies, through: :ads

  #validates :username, uniqueness: true

  # def serve
  #   services.each do |service|
  #     service
  #   end
  # end

end

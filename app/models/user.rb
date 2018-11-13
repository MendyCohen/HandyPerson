class User < ApplicationRecord
  has_many :ads
  has_many :services, through: :ads
end

class HandyService < ApplicationRecord
  belongs_to :handy
  belongs_to :service

  #valting that we can't create the same job for one handyman

def all_handy_guys
  self.handy
end

end

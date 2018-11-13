Rails.application.routes.draw do
  resources :ads
  resources :users
  resources :handy_services
  resources :services
  resources :handies
  resources :handy_prsons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

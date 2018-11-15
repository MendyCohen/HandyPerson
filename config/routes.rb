Rails.application.routes.draw do
  resources :users do
    # post '/ads', to: 'ads#create', as: 'ads'
    #post 'users/:id/ads/:id' to: 'user#update'
    resources :ads
    resources :services do
      resources :handies
    end
    resources :handy_services
    resources :handy_prsons
  end

  #get 'users/id/services/id/handies/id'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

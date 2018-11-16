Rails.application.routes.draw do
  post '/create', to:'users#create', as: 'create'
  resources :users do
    # post '/ads', to: 'ads#create', as: 'ads'
    #post 'users/:id/ads/:id' to: 'user#update'
    resources :ads
    resources :services do
      resources :handies
    end
    resources :handy_services
    resources :handies

  end

  get '/welcome', :to => 'users#welcome'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # get   'home/realizarDonacion'
  # get   'home/solicitarDonacion'

  # resources :donar, only: [:new, :create]
  get   'donar' => 'donar#index'
  get   'donar/new' 
  post  'donar' => 'donar#create'

  get   'solicitar' => 'solicitar#index'
  get   'solicitar/new' 
  post  'solicitar' => 'solicitar#create'

  root 'home#index'

  # post   'donations/donation' create
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

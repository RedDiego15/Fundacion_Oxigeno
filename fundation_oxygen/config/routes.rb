Rails.application.routes.draw do
  root 'home#index'
  get   'home/realizarDonacion'
  get   'home/solicitarDonacion'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
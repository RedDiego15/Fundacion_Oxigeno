Rails.application.routes.draw do
  root 'home#index'
  get   'home/realizarDonacion'
  get   'home/solicitarDonacion'
  # get   'donations/donation'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

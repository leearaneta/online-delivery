Rails.application.routes.draw do
  resources :items
  resources :orders
  resources :restaurants
  resources :users
  post '/check_delivery_zone', to: 'restaurants#check_delivery_zone'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

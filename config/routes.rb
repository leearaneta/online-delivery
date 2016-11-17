Rails.application.routes.draw do
  resources :items
  resources :orders
  resources :restaurants
  resources :users
  resources :courses
  resources :types
  post '/check_delivery_zone', to: 'restaurants#check_delivery_zone'
  post '/users/validate/fields', to: 'users#validate'
end

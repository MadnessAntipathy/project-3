Rails.application.routes.draw do

  resources :items

  get '/orders' => 'orders#index', as: 'orders'

end
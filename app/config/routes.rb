Rails.application.routes.draw do


  get '/orders' => 'orders#index', as: 'orders'

  root "mains#index"
  devise_for :staffs
  resources :tables


end

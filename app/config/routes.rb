Rails.application.routes.draw do


  get '/orders' => 'orders#index', as: 'orders'

  root "mains#index"
  get '/kitchen' => 'mains#kitchen'
  get '/getorders' => 'mains#orders'
  get '/completeorders' => 'mains#complete'
  devise_for :staffs
  resources :tables


end

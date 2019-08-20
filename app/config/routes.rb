Rails.application.routes.draw do

  get '/items/optionajax' => 'items#optionajax'
  resources :items



  get '/orders' => 'orders#index', as: 'orders'

end
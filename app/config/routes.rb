Rails.application.routes.draw do

  get '/orders' => 'orders#index', as: 'orders'

end
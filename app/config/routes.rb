Rails.application.routes.draw do

  get '/orders' => 'orders#index', as: 'orders'
  get '/orders/:id' => 'orders#show' , as: 'order'
  patch '/orders/:id' => 'orders#update'
  delete '/orders/:id' => 'orders#destroy'

end
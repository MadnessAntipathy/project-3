Rails.application.routes.draw do


  get '/orders' => 'orders#index', as: 'orders'
  get '/orders/:id' => 'orders#show' , as: 'order'
  patch '/orders/:id' => 'orders#update'
  delete '/orders/:id' => 'orders#destroy'

  get '/orders/:id/items' => 'items#show' , as: 'order_items'
  delete '/orders/:id/items/:item_id' => 'items#destroy', as: 'order_item_delete'

  root "mains#index"
  devise_for :staffs
  resources :tables


end

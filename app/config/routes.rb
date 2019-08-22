Rails.application.routes.draw do


  post '/items' => 'items#cart', as: 'add_cart'
  get '/items' => 'items#index', as: 'items'
  get '/items/:category' => 'items#show'

  get '/carts' => 'carts#index', as: 'carts'
  get '/carts/:id' => 'carts#show' , as: 'cart'
  delete '/carts/:id' => 'carts#destroy', as: 'delete_cart'

  get '/orders' => 'orders#index', as: 'orders'
  get '/orders/:id' => 'orders#show' , as: 'order'
  patch '/orders/:id' => 'orders#update'
  delete '/orders/:id' => 'orders#destroy'
  post '/submit' => 'orders#submit', as: "submit"


  get '/orders/:id/items' => 'items#show' , as: 'order_items'
  delete '/orders/:id/items/:item_id' => 'items#destroy', as: 'order_item_delete'

  root "mains#index"
  get '/kitchen' => 'mains#kitchen'
  get '/table' => 'mains#table'
  get '/getorders' => 'mains#orders'
  post '/assigntable' => 'mains#assign', as: "assign"
  get '/releasetable' => 'mains#release', as: "release"
  get '/completeorders' => 'mains#complete'
  post '/destroyalltables' => 'mains#destroy', as: "destroyall"
  delete '/deletetable' => 'tables#destroy', as: "deletetable"

  devise_for :staffs
  resources :tables

  get '/reports' => 'reports#index', as: 'reports'
  get '/sales/:id' => 'sales#show' , as: 'sale'


end

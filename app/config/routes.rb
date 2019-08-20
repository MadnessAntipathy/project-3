Rails.application.routes.draw do


  get '/items/optionajax' => 'items#optionajax'
  resources :items

  get '/orders' => 'orders#index', as: 'orders'
  get '/orders/:id' => 'orders#show' , as: 'order'
  patch '/orders/:id' => 'orders#update'
  delete '/orders/:id' => 'orders#destroy'

  get '/orders/:id/items' => 'items#show' , as: 'order_items'
  delete '/orders/:id/items/:item_id' => 'items#destroy', as: 'order_item_delete'

  root "mains#index"
  get '/kitchen' => 'mains#kitchen'
  get '/table' => 'mains#table'
  get '/getorders' => 'mains#orders'
  get '/assigntable' => 'mains#assign', as: "assign"
  get '/releasetable' => 'mains#release', as: "release"
  get '/completeorders' => 'mains#complete'
  devise_for :staffs
  resources :tables

  get '/reports' => 'reports#index', as: 'reports'
  get '/sales/:id' => 'sales#show' , as: 'sale'


end
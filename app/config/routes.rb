Rails.application.routes.draw do

  devise_for :customers
  devise_for :staffs
  resources :customers
  resources :staffs
  resources :reservations
  resources :orders
  resources :menuitems
  resources :reports

end

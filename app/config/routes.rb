Rails.application.routes.draw do

  resources :customers
  resources :staffs
  resources :reservations
  resources :orders
  resources :menuitems
  resources :reports

end

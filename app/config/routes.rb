Rails.application.routes.draw do
  root "mains#index"
  devise_for :staffs
  resources :tables

end

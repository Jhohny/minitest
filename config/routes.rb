Rails.application.routes.draw do

  get 'products/new'

  devise_for :users
  resources :brands
  root 'brands#index'

end
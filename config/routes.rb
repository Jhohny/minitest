Rails.application.routes.draw do

  #get 'products/new'

  devise_for :users 
  resources  :brands 
  resources  :products
  root 'brands#index'

end
Rails.application.routes.draw do

  devise_for :users 
  resources  :brands 
  resources  :products
  root 'brands#index'

end
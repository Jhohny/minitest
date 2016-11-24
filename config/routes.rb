Rails.application.routes.draw do

  resources :brands
  root 'brands#new'

end
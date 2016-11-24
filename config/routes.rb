Rails.application.routes.draw do

get 'search' => 'products#search'
get 'adminproducts' => 'product#adminproducts'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :orders
  resources :products
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

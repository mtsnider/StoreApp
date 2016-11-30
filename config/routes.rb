Rails.application.routes.draw do

  # get 'product_on_order/create'
  #
  # get 'product_on_order/update'
  #
  # get 'product_on_order/destroy'
  # 
  # get 'carts/show'

  resources :products, only: [:index]
 resource :cart, only: [:show]
 resources :product_on_order, only: [:create, :update, :destroy]

get 'search' => 'products#search'
get 'adminproducts' => 'admin#adminproducts'
get 'about' => 'aboutpage#about'
get 'contact' => 'contactpage#contact'
get 'adminform' => 'adminupload#new'
get 'home' => 'products#index'
get '' => 'products#index'


get "pages" => "pages#show"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :orders
  resources :products
  resources :customers
  resources :adminupload
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

get 'search' => 'products#search'
get 'adminproducts' => 'admin#adminproducts'
get 'adminupload' => 'uploadedimage#_form'
get 'about' => 'aboutpage#about'

get 'home' => 'products#index'


get "pages" => "pages#show"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :orders
  resources :products
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

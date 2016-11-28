Rails.application.routes.draw do

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

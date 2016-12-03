Rails.application.routes.draw do
  get 'carts/show'

  get 'cart/create'

  get 'cart/update'

  get 'cart/destory'

  get 'cart/index'

  get 'cart/:id' => 'product_on_order#add_item', as: 'item_added'

  post 'new_user', to: 'customer#create_new_user'
  post 'new_order', to: 'customer#create_new_order'
  get 'sign_in', to: 'user#sign_in'

  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  # resources :order_items, only: [:create, :update, :destroy]

  get 'search' => 'products#search'
  get 'adminproducts' => 'admin#adminproducts'
  get 'about' => 'aboutpage#about'
  get 'contact' => 'contactpage#contact'
  get 'adminform' => 'adminupload#new'
  get 'home' => 'products#index'
  get '' => 'products#index'

  get 'pages' => 'pages#show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :orders
  resources :products
  resources :customers
  resources :adminupload
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

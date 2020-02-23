Rails.application.routes.draw do
  devise_for :customers
    namespace :customer do
        resources :orders, only: [:new, :show, :create, :index]
        resources :customers, only: [:show, :edit, :update,:destroy]
        resources :cart_products, only: [:index, :create, :update, :destroy]
        resources :products, only: [:index, :show]
        resources :deliveries, only: [:index, :create, :edit, :update, :destroy]
    end
    get "thanks" => "customers/orders#thanks"
    delete "/destroy_all" => "customer/cart_products#destroy_all"
    get "/destroy_confirm" => "customer/customers#destroy_confirm"
    get "/purchase" => "customer/customers#purchase"


    namespace :admin do
        root 'admins#top'
        resources :products
        resources :genres, only: [:index, :create, :edit, :update, :destroy]
        resources :orders, only: [:index, :show, :update]
        resources :customers, only: [:index, :show, :edit, :update]
    end


end 
Rails.application.routes.draw do
    namespace :customer do
        resources :orders
        resources :customers
        resources :cart_products, only: [:index, :create, :update, :destroy]
        resources :products, only: [:index, :show]
        resources :deliveries, only: [:index, :create, :edit, :update, :destroy]
    end
        

    namespace :admin do
        resources :products, :genres
        resources :orders, only: [:index, :show, :update]
        resources :customers, only: [:index, :show, :edit, :update]
    end

end
Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations'
    }
  devise_for :customers, controllers: {
    sessions: 'customers/sessions',
    registrations: 'customers/registrations'
    }

    namespace :customer do
        resources :orders, only: [:new, :show, :create, :index]
        resources :customers, only: [:show, :edit, :update, :destroy] do
          resources :reviews,only: [:index]
        end
        resources :cart_products, only: [:index, :create, :update, :destroy]
        resources :products, only: [:index, :show] do
          resources :reviews,only: [:new, :show, :create, :edit, :update, :destroy]
        end
        resources :deliveries, only: [:index, :create, :edit, :update, :destroy]

    end
    root "customer/products#top"
    get "thanks" => "customer/orders#thanks"
    delete "/destroy_all" => "customer/cart_products#destroy_all"
    get "/destroy_confirm/:id" => "customer/customers#destroy_confirm",as: "destroy_confirm"
    post "/purchase" => "customer/orders#purchase" #getからpostに変更
    patch "/product_status/:id" => "admin/orders#product_status_update",as: "product_status_update"


    namespace :admin do
        # コントローラーordersでtopを管理
        root "orders#top"
        resources :products
        resources :genres, only: [:index, :create, :edit, :update, :destroy]
        resources :orders, only: [:index, :show, :update]
        resources :customers, only: [:index, :show, :edit, :update]
    end


end

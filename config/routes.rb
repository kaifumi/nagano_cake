Rails.application.routes.draw do


resources :products
  # For details on tgithe DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :deliveries,only: [:index, :create, :edit, :update, :destroy]
end

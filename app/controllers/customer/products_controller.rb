class Customer::ProductsController < ApplicationController

 def top
  @products = Product.all
  @products = Product.page(params[:page]).per(8)
  @genres = Genre.all
 end

 def index
  params[:genres]
  @products = Product.all.where(genre_id: params[:genres])
  @products = Product.page(params[:page]).per(8)

  @genres = Genre.all

 end


 def show
  @product = Product.find(params[:id])
  @product_new = Product.new
  @cart_product = CartProduct.new
 end

end

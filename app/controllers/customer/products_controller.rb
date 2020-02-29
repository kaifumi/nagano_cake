class Customer::ProductsController < ApplicationController

 def top
  @products = Product.all
  @products = Product.page(params[:page]).per(8)
  @genres = Genre.all
 end

<<<<<<< HEAD
 def index
  params[:genres]
  @products = Product.all.where(genre_id: params[:genres])
  @products = Product.page(params[:page]).per(8)
=======
  def show
  	@product = Product.find(parames[:id])
    @product=Product.find(params[:id])
    @reviews=Review.where(product_id:params[:id])
  end
>>>>>>> cd231d2a131d9678658708e697ddcd893cb8b4b4

  @genres = Genre.all

 end


 def show
  @product = Product.find(params[:id])
  @product_new = Product.new
  @cart_product = CartProduct.new
 end

end

class Customer::ProductsController < ApplicationController

 def top
  @products = Product.all
  @products = Product.page(params[:page]).per(8)

  # ジャンルが有効のもののみ表示
  @genres = Genre.all.where(sell_activated: true)
 end

 def index
  params[:genres]
  @products = Product.where(genre_id: params[:genres])
  @products = Product.page(params[:page]).per(8)

  # ジャンルが有効のもののみ表示
  @genres = Genre.all.where(sell_activated: true)
 end

 def show
  @product = Product.find(params[:id])
  @product_new = Product.new
  @cart_product = CartProduct.new
  @reviews=Review.where(product_id:params[:id])

  # ジャンルが有効のもののみ表示
  @genres = Genre.all.where(sell_activated: true)
 end

 private
 def products_params
  params.require(:product).permit(:name, :content, :image_id, :price, :selling_status)
 end

end

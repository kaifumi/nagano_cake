class Customer::ProductsController < ApplicationController

 def top
  @products = Product.all
  @products = Product.page(params[:page]).per(8)

  # ジャンルが有効のもののみ表示
  @genres = Genre.all.where(sell_activated: true)
 end

 def index
  if params[:genre_id].present?
  @genre_select = "true"
  @products = Product.where(genre_id: params[:genre_id]).page(params[:page]).per(8)
  @genre = Genre.find(params[:genre_id])
  else
  @products = Product.all.page(params[:page]).per(8)
  @genre_select = "false"
  end

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


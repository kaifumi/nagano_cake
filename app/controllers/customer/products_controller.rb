class Customer::ProductsController < ApplicationController

 def top
  # ジャンル有効を抽出
  genres=Genre.where(sell_activated: true)
  # 空の配列を定義
  genre_true=[]
  # 擬似autoincremationを用いる
  i=0
  genres.each do |genre|
    # pushメソッドで配列にジャンルのidのみを挿入
    genre_true.push(genres[i][:id])
    i+=1
  end
  # ジャンルが有効な商品だけを抽出
  @products = Product.where(genre_id:genre_true).page(params[:page]).per(8)
  # ジャンルが有効だけを表示
  @genres = Genre.where(sell_activated: true)
 end

 def about
 end

 def index
  if params[:genre_id].present?
    @genre_select = "true"
    @products = Product.where(genre_id: params[:genre_id]).page(params[:page]).per(8)
    @genre = Genre.find(params[:genre_id])
  else
     @products = Product.all.page(params[:page]).per(8)
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


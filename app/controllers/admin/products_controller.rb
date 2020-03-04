class Admin::ProductsController < ApplicationController
	PER = 10

  def new
  	@product = Product.new
  end

  def create
  	@product = Product.new(products_params)
  	if @product.save
  		flash[:notice] = "商品の登録が完了しました"
  		redirect_to admin_product_path(@product.id)
  	else
      #↓を書くと、@product = Product.new(products_params)のバリデーションで引っかかった記録を上書きしてしまうためエラーメッセージが表示されない。
      # @product = Product.new
  		render action: :new
  	end
  end

  def index
    # genreテーブルの情報も一緒に取得する
  	@products = Product.all.includes(:genres)
    @products = Product.page(params[:page]).per(PER)
  end

  def show
  	@product = Product.find(params[:id])
    @genre = Genre.find(@product.genre_id)
  end

  def edit
  	@product = Product.find(params[:id])
  end

  def update
  	@product = Product.find(params[:id])
  	if @product.update(products_params)
  		flash[:noticde] = "商品の再登録が完了しました"
      redirect_to admin_product_path(@product.id)
  	else
      #↓def createに同じ
      # @product = Product.find(params[:id])
  		render action: :edit
  	end
  end

  private

  def products_params
  	params.require(:product).permit(:name, :content, :image, :genre_id, :price, :selling_status)
  end
end

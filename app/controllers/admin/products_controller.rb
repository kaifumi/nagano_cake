class Admin::ProductsController < ApplicationController

# before_action :authenticate_admin!
# before_action :set_product
# before_action :if_not_admin
# before_action :correct_admin, only: [:new, :edit, :update, :destroy]

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
      @product = Product.new
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
      @product = Product.find(params[:id])
  		render action: :edit
  	end
  end

  private

  def products_params
  	params.require(:product).permit(:name, :content, :image, :genre_id, :price, :selling_status)
  end

  # def if_not_admin
  #   if Customer.all
  #     redirect_to root_path
  #   end
  # end

  # def correct_customer
  #   @product = Product.find(params[:id])
  #   if current_admin.id != @product.admin_id
  #     redirect_to root_path
  #   end
  # end

end

class Admin::ProductsController < ApplicationController

  def new
  	@product = Product.new
  end

  def create
  	@product = Product.new
  	if @product.save
  		flash[:notice] = "商品の登録が完了しました"
  		redirect_to admin_products_path
  	else
  		render action: :new
  	end
  end

  def index
  	@products = Product.all
  end

  def show
  	@product = Product.find(params[:id])
  end

  def edit
  	@product = Product.find(params[:id])
  end

  def update
  	@product = Product.find(params[:id])
  	if @product.update(product_params)
  		flash[:noticde] = "商品の再登録が完了しました"
  		redirect_to admin_products_index_path
  	else
  		render action: :edit
  	end
  end

  private

  def products_params
  	params.require(:product).permit(:name, :content, :image_id, :price, :selling_status)
  end
end

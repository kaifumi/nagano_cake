class Admin::ProductsController < ApplicationController
	PER = 10

  def new
  	@product = Product.new
  end

  def create
  	@product = Product.new(products_params)
  	if @product.save
  		flash[:notice] = "商品の登録が完了しました"
  		redirect_to admin_products_path
  	else
      @product = Product.new
  		render action: :new
  	end
  end

  def index
  	@products = Product.all
  	@products = Product.page(params[:page]).per(PER)
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
  	params.require(:product).permit(:name, :content, :image_id, :price, :selling_status, :remove_image)
  end
end

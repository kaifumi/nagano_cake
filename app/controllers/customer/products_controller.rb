class Customer::ProductsController < ApplicationController

  def index
  	@products = Product.all
  end

  def show
  	@product = Product.find(parames[:id])
    @product=Product.find(params[:id])
    @reviews=Review.where(product_id:params[:id])
  end

  private
  def products_params
  	params.require(:product).permit(:name, :content, :image_id, :price, :selling_status)
  end

end

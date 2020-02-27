class Customer::ProductsController < ApplicationController

  def index
  	@products = Product.all
  end

  def show
  	@Product = Product.find(parames[:id])
  end

  private
  def products_params
  	params.require(:product).permit(:name, :content, :image_id, :price, :selling_status)
  end

end

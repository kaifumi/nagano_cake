class Customer::ProductsController < ApplicationController

  def index
  	@products = Product.all
  end

  def show
  	@Product = Product.find(parames[:id])
  end
end

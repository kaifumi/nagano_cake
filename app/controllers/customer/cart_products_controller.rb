class Customer::CartProductsController < ApplicationController

	def index
		@cart_products = CartProduct.where(customer_id: current_customer.id)
		# @product = CartProduct.where(product_id: current_customer.id)
		# @product = Product.find(params[:id])
		# @order = Order.new
	end

	def create
		@cart_product = CartProduct.new(cart_product_params)
		@cart_product.customer_id = current_customer.id
		# ↓customer_idとproduct_idが同じ数値のものしかカートに入らない。
		# @cart_product.product_id = current_customer.id
		if @cart_product.save
			flash[:notice] = "You have creatad successfully."
			redirect_to customer_cart_products_path
		else
			render action: :index
		end
	end

	def update
		@cart_product = CartProduct.find(params[:id])
		if
			@cart_product.update(cart_product_params)
			redirect_to customer_cart_products_path
		else
			render action: :index
		end
	end

	def destroy
		@cart_product = CartProduct.find(params[:id])
		@cart_product.destroy
		redirect_to customer_cart_products_path
	end

	def destroy_all
		@cart_products = CartProduct.where(customer_id: current_customer.id)
		@cart_products.destroy_all
		redirect_to customer_cart_products_path
	end


	private

	def cart_product_params
		params.require(:cart_product).permit(:customer_id, :product_id, :amount)
		# params.require(:cart_product).permit(:amount)
	end

end

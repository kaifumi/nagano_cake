class Customer::DeliveriesController < ApplicationController
	
# before_action :authenticate_customer!
# before_action :correct_customer, only: [:index, :edit, :update, :destroy]
	
	def index
		@delivery = Delivery.new
		# @deliveries = Delivery.all
		#@～ = [model].where(カラム名[キー]: 足りだす値を指定)
		@deliveries = Delivery.where(customer_id: current_customer.id)
		# @deliveries = current_customer.deliveries
		# @customer = current_customer
		# @customers = Customer.all
	end

	def create
		# binding.pry
		@delivery = Delivery.new(delivery_params)
		@delivery.customer_id = current_customer.id
		if @delivery.save
			flash[:notice] = "配送先を追加しました。"
			redirect_to customer_deliveries_path
		else
			@deliveries = Delivery.where(customer_id: current_customer.id)
			render action: :index
		end
	end

	def edit
		@delivery = Delivery.find(params[:id])
	end

	def update
		@delivery = Delivery.find(params[:id])
		if
			@delivery.update(delivery_params)
			flash[:notice] = "配送先を編集しました。"
			redirect_to customer_deliveries_path
		else
			render action: :edit
		end
	end

	def destroy
		@delivery = Delivery.find(params[:id])
		@delivery.destroy
		flash[:notice] = "配送先を削除しました。"
		redirect_to customer_deliveries_path
	end

	private

	# def correct_customer
	# 	@delivery = Delivery.find(params[:id])
	# 	@customer = @delivery.customer.id
	# 	if current_customer != @Customer
	# 		redirect_to customer_deliveries_path
	# 	end
	# end


	def delivery_params
		params.require(:delivery).permit(:postal_code, :address, :receiver)
	end

end

class Customer::CustomersController < ApplicationController
	# before_action :logged_in_customer,only:[:show,:edit,:update,:destroy,:destroy_confirm]
	# before_action :correct_customer,   only: [:edit, :update]

before_action :authenticate_customer!
before_action :correct_customer, only: [:show, :edit, :update, :destroy]

	def show
		 @customer=Customer.find(params[:id])
	end

	

	def edit
		@customer=Customer.find(params[:id])
	end

	def update
		@customer=Customer.find(params[:id])
		if @customer.update_attributes(customer_params)
			flash[:success]="Profile updated"
			redirect_to customer_customer_path
		else
			render 'edit'
		end
	end

	#論理削除を実行
	def destroy
		#updateではなくdestroyを使用
		Customer.find(params[:id]).destroy
    	flash[:success]="退会しました"
    	redirect_to new_customer_customer_path
	end

	def destroy_confirm
		@customer=Customer.find(params[:id])
	end

	private
		def customer_params
			params.require(:customer).permit(:id,:last_name,:first_name,:kana_last_name,:kana_first_name,
							:postal_code,:address,:telephone_number,:email,:deleted_at)
		end

		def correct_customer
			@customer = Customer.find(params[:id])
      		# redirect_to(root_url) unless current_customer?(@customer)
      		if current_customer != @customer
				redirect_to customer_customer_path(current_customer)
			end
		end
end

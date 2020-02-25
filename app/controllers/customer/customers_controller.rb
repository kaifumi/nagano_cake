class Customer::CustomersController < ApplicationController

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

	def destroy
		Customer.find(params[:id]).destroy
    	flash[:success]="退会しました"
    	redirect_to customers_url
	end

	def destroy_confirm
		@customer=Customer.find(params[:id])
	end

	private
		def customer_params
			params.require(:customer).permit(:id,:last_name,:first_name,:kana_last_name,:kana_first_name,
							:postal_code,:address,:telephone_number,:email,:deleted_at)
		end

end

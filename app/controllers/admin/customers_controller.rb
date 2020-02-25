class Admin::CustomersController < ApplicationController
			
	def index
		# 会員情報のインスタンスを生成
		@customers=Customer.all.page(params[:page])
	end

	def show
		@customer=Customer.find(params[:id])
	end

	def edit
		@customer=Customer.find(params[:id])
	end

	def update
		@customer=Customer.find(params[:id])
		if @customer.update_attributes(customer_params)
			flash[:success]="更新完了です！"
			redirect_to admin_customer_path
		else
			render 'edit'
		end
	end

	private
		def customer_params
			params.require(:customer).permit(:id,:last_name,:first_name,:kana_last_name,:kana_first_name,
							:postal_code,:address,:telephone_number,:email,:deleted_at,:status)
		end
end

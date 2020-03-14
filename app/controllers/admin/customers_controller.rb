class Admin::CustomersController < ApplicationController
	# before_action :logged_in_admin,only:[:index,:show,:edit,:update]
	# before_action :correct_admin,   only: [:edit, :update]
	
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
							:postal_code,:address,:telephone_number,:email,:deleted_at,:status,
							:password,:password_confirmation)
		end

		# def correct_admin
		# 	@admin = Admin.find(params[:id])
		# 	redirect_to(root_url) unless current_admin?(@admin)
		# end
end

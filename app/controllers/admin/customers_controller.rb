class Admin::CustomersController < ApplicationController
			
	def index
		# 会員情報のインスタンスを生成
		@customers=Customer.all.page(params[:page])
	end

	def show
		@customer=Customer.find_by(id:params[:id])
	end

	def edit
	end

	def update
	end

end

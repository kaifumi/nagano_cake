class Customer::OrdersController < ApplicationController
    def new
        @order = Order.new
    end

    def create
        @order = Order.(order_params)
        @order.save
        redirect_to purchase_path(@order)
    end

    def index
        @orders = Order.all
    end




    private
    def order_params
        params.require(:order).permit(:customer_id, :payment_option, :transaction_status, :postal_code, :address, :receiver)
    end
end

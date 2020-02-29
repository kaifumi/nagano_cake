class Customer::OrdersController < ApplicationController
    def new
        @order = Order.new
        @customer.id = current_customer.id
    end

    def purchase
        @order = Order.new
        session[:order] = Order.new()
        session[:order] = order_params
        # session[:order][:payment_option] = params[:payment_option] 
        # session[:order][:postal_code] = params[:pastal_code] 
        # session[:order][:address] = params[:address] 
        # session[:order][:receiver] = params[:receiver] 
    end

    def create
        @order = Order.new(session[:order])
        @order.save
        redirect_to thanks_path
    end

    def thanks
        session[:order].clear
    end

    def index
        @orders = Order.all
    end

    

    

    private
    def order_params
        params.require(:order).permit(:customer_id, :payment_option, :postal_code, :address, :receiver)
    end
end

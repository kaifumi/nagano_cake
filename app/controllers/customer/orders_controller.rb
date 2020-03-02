class Customer::OrdersController < ApplicationController
    def new
        @deliveies = Delivery.all
        @order = Order.new
        # if  params[:selected_status] === "1"
            # params[:address] = current_customer.address
            # session[:order][:address] = params[:address]
            # order.address = current_customer.address
            # session[:order][:address] = order.address
            # session[:order] = order_params

        # elsif params[:selected_status] === "2"
        #     order.address = deliveie.address
        #     session[:order] = order_params

        # else params[:selected_status] === "3"
        #     session[:order] = order_params
        # end
        
    end

    def purchase
            @order = Order.new
            @cart_products = CartProduct.where(customer_id: current_customer.id)
            session[:order] = Order.new()
            session[:order][:payment_option] = params[:order][:payment_option]

        if params[:order][:selected_status] === "1"
            session[:order][:postal_code] = current_customer.postal_code
            session[:order][:address] = current_customer.address
            session[:order][:receiver] = current_customer.first_name

        elsif params[:order][:selected_status] === "2"
            address = Delivery.find(params[:order][:delivery].to_i)
            session[:order][:postal_code] = address.postal_code
            session[:order][:address] = address.address
            session[:order][:receiver] = address.receiver

        else params[:order][:selected_status] === "3"
            session[:order][:postal_code] = params[:order][:postal_code]
            session[:order][:receiver] = params[:order][:receiver]
            session[:order][:address] = params[:order][:address]
    end

        
        # session[:order] = Order.new()
        # session[:order][:payment_option] = params[:payment_option] 
        # session[:order][:postal_code] = params[:pastal_code] 
        # session[:order][:address] = params[:address] 
        # session[:order][:receiver] = params[:receiver] p
    end

    def create
        @order = Order.new(session[:order])
        #@cart_product = CartProdut.where(customer_id: current_customer.id)
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
        params.permit(:customer_id, :payment_option, :postal_code, :address, :delivery_price, 
                        :receiver, :selected_status => [ 1, 2, 3 ])
    end
end

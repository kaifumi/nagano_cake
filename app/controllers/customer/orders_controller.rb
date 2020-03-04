class Customer::OrdersController < ApplicationController
    def new
        @deliveies = Delivery.all
        @order = Order.new
    end

    def purchase
            @order = Order.new
            @cart_products = CartProduct.where(customer_id: current_customer.id)
            session[:order] = Order.new()
            session[:order][:customer_id] = current_customer.id
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
    end

    def create
        @order = Order.new(session[:order])
        cart_products = current_customer.cart_products

        sum = 0
        sub_total = 0

        cart_products.each do |cart_product|
            (cart_product.product.price * 1.1).round
            (cart_product.product.price * 1.1).round* cart_product.amount
            sub_total+=(cart_product.product.price * 1.1).round* cart_product.amount
            sum+=sub_total
            sum = sub_total + @order.delivery_price
        end
        params[:total_price] = sum
        @order[:total_price] = params[:total_price]
        # @cart_product = CartProduct.where(customer_id: current_customer.id)
        @order.save

        current_customer.cart_products.each do |cart_product|
            @order_detail = OrderDetail.new(
            order_id: @order.id,
            product_id: cart_product.product.id,
            purchase_price: cart_product.product.price,
            amount: cart_product.amount,
            )
            @order_detail.save
        end
        redirect_to thanks_path
    end

    def thanks
        session[:order].clear
    end
    

    def index #注文履歴一覧画面
        # @orders = OrderDetail.all
        # @orders = OrderDetail.all 
        @order_details = OrderDetail.all.where(customer_id: current_customer.id)
        
    end

    def show #注文履歴詳細画面
        # @order_detail = OrderDetail.find

        
    end

    private
    def order_params
        params.permit(:customer_id, :payment_option, :postal_code, :address, :delivery_price, :total_price,
                        :receiver, :selected_status => [ 1, 2, 3 ])
    end
end

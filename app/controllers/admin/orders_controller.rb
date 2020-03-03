class Admin::OrdersController < ApplicationController
    def index
        @orders = Order.all.includes(:order_details, :customers)
        @orders = Order.page(params[:page]).per(10)
    end

    def show
        @order=Order.find(params[:id])
    end

    def top
        @orders=Order.all
    end
end

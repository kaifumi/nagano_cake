class Admin::OrdersController < ApplicationController
    def index
        @orders = Order.all.includes(:order_details, :customers)
        @orders = Order.page(params[:page]).per(10)
    end
end

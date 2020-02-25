class Customers::OrdersController < ApplicationController
    def new
        @order = Order.new
    end

    def create
        @order = Order.(params[:id])
        @order.save
        redirect_to purchase_path(@oder)
    end
end

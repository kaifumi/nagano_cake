class Admin::OrdersController < ApplicationController
    def index
        @orders = Order.all.includes(:order_details, :customers)
        @orders = Order.page(params[:page]).per(10)
    end

    def show
        @order=Order.find(params[:id])
        @order_details=OrderDetail.where(order_id:params[:id])
    end

    def update
        @order=Order.find(params[:id])
        # 支払いステータスの入力値をif文で管理
        if params[:order][:transaction_status]=="0"
            transaction_status="入金待ち"
        elsif params[:order][:transaction_status]=="1"
            transaction_status="入金確認"
        elsif params[:order][:transaction_status]=="2"
            transaction_status="製作中"
        elsif params[:order][:transaction_status]=="3"
            transaction_status="発送準備中"
        elsif params[:order][:transaction_status]=="4"
            transaction_status="発送済み"
        end
        # 支払いステータスカラムのみをupdate
        if @order.update(transaction_status: transaction_status)
            flash[:notice] = "更新が完了しました"
            redirect_to admin_order_path(@order.id)
        else
            flash[:notice] = "更新に失敗しました"
            render action: :show
        end
    end

    def product_status_update
        @order_detail=OrderDetail.find(params[:id])
        if params[:order_detail][:product_status]=="0"
            product_status="着手不可"
        elsif params[:order_detail][:product_status]=="1"
            product_status="製作待ち"
        elsif params[:order_detail][:product_status]=="2"
            product_status="製作中"
        elsif params[:order_detail][:product_status]=="3"
            product_status="製作完了"
        end 

        @order = Order.find_by(id:params[:order_id])
        if @order_detail.update(product_status: product_status)
            flash[:notice] = "更新が完了しました"
            redirect_to admin_order_path(@order_detail.order_id)
        else
            flash[:notice] = "更新に失敗しました"
            render "show"
        end
    end

    def top
        @orders=Order.all
    end

    private
        def order_params
            params.require(:order).permit(:customer_id,:transaction_status,:total_price,:postal_code,:address,:receiver)
        end

        def order_detail_params
            params.require(:order_detail).permit(:product_id,:order_id,:purchase_price,:amount,:product_status)
        end
end

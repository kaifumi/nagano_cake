class Customer::ReviewsController < ApplicationController
    
# before_action :authenticate_customer!
# before_action :correct_customer, only: [:edit, :update, :destroy]

    def new
        @review=Review.new
        # @product=Product.find(1)
        @product=Product.find_by(id:params[:product_id])
    end

    def index
        @customer=Customer.find(params[:id])
        @reviews=Review.where(customer_id:@customer.id)
        #↑2つか↓1つ？
        # @reviews=Review.where(customer_id: current_customer.id)
        #商品ごとの評価値を平均化
        #変数化しないとできなかった
        review_ave=Review.group(:product_id).average(:rate)
        #valueを降順で変数化
        @all_ranks=review_ave.sort_by { |i,v| v}.reverse[0..3]
        @products=Product.all
        @reviews_all=Review.all
    end

    def create
        @review=Review.new(review_params)
        # @review.customer_id = current_customer.id
        if
        @review.save
        flash[:succes]="投稿完了です"
        redirect_to customer_product_path(id:@review.product_id)
        else
        @product=Product.find_by(id:params[:product_id])
        render action: :new
        end
    end

    def edit
        @review=Review.find(params[:id])
        @product=Product.find_by(id:params[:product_id])
    end

    def update
        @review=Review.find(params[:id])
        if @review.update(review_params)
            flash[:succes]="更新完了です"
            redirect_to customer_product_path(id:@review.product_id)
        else
            @product=Product.find_by(id:params[:product_id])
            render action: :edit
        end
    end
    
    def destroy
        @review=Review.find(params[:id])
        @review.destroy
        flash[:succes]="削除完了です"
        redirect_to customer_product_path(id:@review.product_id)
    end

    private
    def review_params
        params.require(:review).permit(:id,:rate,:product_id,:customer_id,:title,:content)
    end

    # def correct_customer
    #     @review = Review.find(params[:id])
    #     if current_customer.id != @review.customer_id
    #         redirect_to customer_reviews_path(:id)
    #     end
    # end
end

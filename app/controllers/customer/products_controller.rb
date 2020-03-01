class Customer::ProductsController < ApplicationController
    

    def top
        # @products = Product.all
        @products = Product.all.page(params[:page]).per(8)
        @genres = Genre.all
    end

    def index
        params[:genres]
        @products = Product.all.where(genre_id: params[:genres])
        @products = Product.page(params[:page]).per(8)
        @genres = Genre.all
    end

    def show
        @product = Product.find(params[:id])
        @product_new = Product.new
        @cart_product = CartProduct.new
        @reviews=Review.where(product_id:params[:id])
        @genres = Genre.all
    end

    private
        def products_params
            params.require(:product).permit(:name, :content, :image_id, :price, :selling_status)
        end
    

end

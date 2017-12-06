class ProductsController < ApplicationController
  def index
    @products = Product.all
    @order_item = current_order.order_items.new

  end

  def details

  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully added!"
      respond_to do |format|
        format.html { redirect_to products_path }
        format.js
      end
    else
      render :new
    end
  end

  def product_params
    params.require(:product).permit(:price, :name, :details)
  end
end

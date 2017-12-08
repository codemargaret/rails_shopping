class CartsController < ApplicationController

  def show
    @order_items = current_order.order_items
  end

  def destroy
    @item = OrderItem.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to cart_path }
      format.js { render 'carts/destroy'}
    end
  end
end

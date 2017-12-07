class OrdersController < ApplicationController
  def index
    @orders = Order.all
    @user_orders = @orders.where(:account_id => current_user.id)

    @order_items = OrderItem.all
    @user_order_items = @order_items.where(:order_id => @user_orders.first.id)

    @products = Product.all
    @user_products = @products.where(:id => @user_order_items)
    @things = current_user.account.orders
  end

end

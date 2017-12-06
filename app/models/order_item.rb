class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product

  validates :quantity, :presence => true
  validates :quantity, :inclusion => { :in => 1..1000 }



  def update_quantity(order)
    if order.order_items.exists?(:product_id => item_params[:product_id])
      order_item = order.order_items.where(:product_id => item_params[:product_id]).first
      order_item.quantity += item_params[:quantity].to_i
      order_item.save
    else
      item = order.order_items.new(item_params)
    end
  end

end

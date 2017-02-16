class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def index
    @orders = Order.all
  end

  def create
    @order = Order.new(order_param)
    @order.save
    redirect_to @order
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    redirect_to orders_path
  end

  def show
    @order = Order.find(params[:id])
  end
 
 private
  def order_param
   params.require(:order).permit(:name,:address,:qty1,:qty2,:totalprice,:contact)
  end

end

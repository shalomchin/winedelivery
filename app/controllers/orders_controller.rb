class OrdersController < ApplicationController
  def new
    @totalprice = 0
  end

  def index
    @orders = Order.all
  end

  def create
    @order = Order.new(order_param)
    @order.save
    redirect_to @order
  end

  # def calculate
  #   @totalprice = @qty1*35+@qty2*40
  #   return @totalprice
  # end

  def show
    
    @order = Order.find(params[:id])
  end
 
 private
  def order_param
   params.require(:order).permit(:name,:address,:qty1,:qty2,:totalprice)
  end

end

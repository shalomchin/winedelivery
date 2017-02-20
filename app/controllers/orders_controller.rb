class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def index
    @orders = Order.all
  end

  def create
    @order = Order.new(order_param)
    if @order.save
      redirect_to @order
    else 
      render "new"
      flash[:notice]= @order.errors.full_messages 
    end
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
   params.require(:order).permit(:name,:address,:qty1,:qty2,:totalprice,:contact,:product_image)
  end

end

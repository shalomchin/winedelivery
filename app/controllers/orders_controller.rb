class OrdersController < ApplicationController
	def new
	end

	def create
		render plain: params[:order].inspect
	end

	def show
    @order = Order.find(params[:id])
  end

end

class OrdersController < ApplicationController
  def index
    @orders = OrderService.new.all
  end
end

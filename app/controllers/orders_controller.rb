class OrdersController < ApplicationController
  def index
    @orders = OrderService.all
  end
end

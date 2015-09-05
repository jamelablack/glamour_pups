class ProductsController < ApplicationController
  def index
    @products = ProductService.new.all
  end
end

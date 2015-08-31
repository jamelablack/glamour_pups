class ProductsController < ApplicationController
  def index
    @products = ProductService.all
  end
end

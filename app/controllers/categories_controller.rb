class CategoriesController < ApplicationController
  def index
    @categories = CategoryService.new.all
  end
end

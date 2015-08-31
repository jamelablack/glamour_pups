class CategoriesController < ApplicationController
  def index
    @categories = CategoryService.all
  end
end

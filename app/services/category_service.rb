class CategoryService < BaseService

  def all
    data = parsed_response('accounts/2270023/categories')
    build_models(data, Category)
  end

end

class ProductService < BaseService

  def all
    data = parsed_response('accounts/2270023/products')
    build_models(data, Product)
  end

end

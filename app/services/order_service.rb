class OrderService < BaseService

  def all
    data = parsed_response('accounts/2270023/orders')
    build_models(data, Order)
  end

end

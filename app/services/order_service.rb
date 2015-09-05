class OrderService
  extend BaseService

  class << self
    def all
      data = parsed_response('accounts/2270023/orders')

      data['data'].map do |data|
        attributes = { id: data['id'], type: data['type'] }.merge data['attributes']
        Order.new attributes
      end
    end
  end
end

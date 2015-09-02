class ProductService
  extend BaseService

  class << self
    def all
      data = send('accounts/2270023/products')

      data['data'].map do |data|
        attributes = { id: data['id'], type: data['type'] }.merge data['attributes']
        Product.new attributes
      end
    end
  end
end

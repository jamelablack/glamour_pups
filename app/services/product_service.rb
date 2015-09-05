class ProductService < BaseService

  def self.all
    data = parsed_response('accounts/2270023/products')

    data['data'].map do |data|
      attributes = { id: data['id'], type: data['type'] }.merge data['attributes']
      Product.new attributes
    end
  end
end

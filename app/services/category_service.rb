class CategoryService < BaseService

  def self.all
    data = parsed_response('accounts/2270023/categories')

    data['data'].map do |data|
      attributes = { id: data['id'], type: data['type'] }.merge data['attributes']
      Category.new attributes
    end
  end
end

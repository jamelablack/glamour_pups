class CategoryService
  extend BaseService

  class << self
    def all
      data = send('accounts/2270023/categories')

      data['data'].map do |data|
        attributes = { id: data['id'], type: data['type'] }.merge data['attributes']
        Category.new attributes
      end
    end
  end
end

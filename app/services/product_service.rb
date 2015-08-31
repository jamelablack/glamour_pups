class ProductService < BaseService
  class << self
    def all
      super('products', 'product', Product)
    end

    private
    def subdomain
      Rails.application.secrets.big_cartel_subdomain
    end

    def password
      Rails.application.secrets.big_cartel_password
    end

  end
end

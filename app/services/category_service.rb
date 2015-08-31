class CategoryService < BaseService
  class << self
    def all
      super('categories', 'category', Category)
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

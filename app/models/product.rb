class Product
  include Virtus.model

  attribute :id, String
  attribute :name, String
  attribute :status, String
  attribute :description, String
  attribute :default_price, Decimal

end

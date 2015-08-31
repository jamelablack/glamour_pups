class Category
  include Virtus.model

  attribute :id, String
  attribute :name, String
  attribute :position, Integer
end

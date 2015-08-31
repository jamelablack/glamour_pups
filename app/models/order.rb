class Order
  include Virtus.model

  attribute :id, String
  attribute :type, String
  attribute :customer_first_name, String
  attribute :customer_last_name, String
  attribute :customer_email, String
  attribute :shipping_state, String
  attribute :shipping_status, String

end

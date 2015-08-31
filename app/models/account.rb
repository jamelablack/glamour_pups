class Account
  include Virtus.model

  attribute :id, String
  attribute :subdomain, String
  attribute :store_name, String
  attribute :description, String
  attribute :contact_email, String

end

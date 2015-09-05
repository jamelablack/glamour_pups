class BaseService
  def self.parsed_response(endpoint)
    response = RestClient.get "https://#{subdomain}:#{password}@api.bigcartel.com/v1/#{endpoint}", {:accept => 'application/vnd.api+json' }
    JSON.parse(response)
  end

  def self.subdomain
    Rails.application.secrets.big_cartel_subdomain
  end

  def self.password
    Rails.application.secrets.big_cartel_password
  end
end

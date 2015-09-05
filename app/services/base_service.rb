class BaseService

  private

  def self.parsed_response(endpoint)
    response = RestClient.get(url(endpoint), headers)
    JSON.parse(response)
  end

  def self.url(endpoint)
    "https://#{subdomain}:#{password}@api.bigcartel.com/v1/#{endpoint}"
  end

  def self.headers
    { :accept => 'application/vnd.api+json' }
  end

  def self.subdomain
    Rails.application.secrets.big_cartel_subdomain
  end

  def self.password
    Rails.application.secrets.big_cartel_password
  end

  def self.build_models(data, klass)
    data['data'].map do |data|
      klass.new attributes_from_data(data)
    end
  end

  def self.attributes_from_data(data)
    { id: data['id'], type: data['type'] }.merge data['attributes']
  end
end

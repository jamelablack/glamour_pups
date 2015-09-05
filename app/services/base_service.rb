class BaseService
  attr_accessor :endpoint

  private

  def parsed_response(endpoint)
    self.endpoint = endpoint
    response = RestClient.get(url, headers)
    JSON.parse(response)
  end

  def url
    "https://#{subdomain}:#{password}@api.bigcartel.com/v1/#{endpoint}"
  end

  def headers
    { :accept => 'application/vnd.api+json' }
  end

  def subdomain
    Rails.application.secrets.big_cartel_subdomain
  end

  def password
    Rails.application.secrets.big_cartel_password
  end

  def build_models(data, klass)
    data['data'].map do |data|
      klass.new attributes_from_data(data)
    end
  end

  def attributes_from_data(data)
    { id: data['id'], type: data['type'] }.merge data['attributes']
  end
end

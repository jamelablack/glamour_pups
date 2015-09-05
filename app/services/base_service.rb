class BaseService

  private

  def parsed_response(endpoint)
    response = RestClient.get(url(endpoint), headers)
    JSON.parse(response)
  end

  def url(endpoint)
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

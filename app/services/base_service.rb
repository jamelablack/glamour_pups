module BaseService
  def send(endpoint)
    response = RestClient.get "https://#{subdomain}:#{password}@api.bigcartel.com/v1/#{endpoint}", {:accept => 'application/vnd.api+json' }
    JSON.parse(response)
    Rails.logger.info(SUBDOMAIN: "#{subdomain}")
    response.inspect
  end

  def subdomain
    Rails.application.secrets.big_cartel_subdomain
  end

  def password
    Rails.application.secrets.big_cartel_password
  end
end

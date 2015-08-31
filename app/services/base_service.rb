class BaseService
  def self.all(link, endpoint, model)
    response = RestClient.get "https://#{subdomain}:#{password}@api.bigcartel.com/v1/accounts/2270023/#{link}", {:accept => 'application/vnd.api+json' }
    JSON.parse(response)['data'].map { |endpoint| model.new endpoint['attributes'].merge({id: endpoint['id'], type: endpoint['type']})}
  end
end

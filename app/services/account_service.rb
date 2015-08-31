class AccountService
  class << self
    def show
      response
      parsed_response = JSON.parse(response)
      Account.new(parsed_response['data']['attributes'].merge(id: parsed_response['data']['id']))
    end

    private

    def subdomain
      Rails.application.secrets.big_cartel_subdomain
    end

    def password
      Rails.application.secrets.big_cartel_password
    end

    def response
      RestClient.get "https://#{subdomain}:#{password}@api.bigcartel.com/v1/accounts/2270023", {:accept => 'application/vnd.api+json' }
    end

  end
end

class AccountService
  extend BaseService

    def self.show
      data = parsed_response('accounts')
      attributes = data['data'][0]['attributes'].merge(id: data['data'][0]['id'])
      Account.new attributes
    end
  end

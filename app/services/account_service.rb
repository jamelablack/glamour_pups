class AccountService
  extend BaseService

  class << self
    def show
      data = send('accounts')
      attributes = data['data'][0]['attributes'].merge(id: data['data'][0]['id'])
      Account.new attributes
    end
  end
end

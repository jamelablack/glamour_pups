class AccountService
  extend BaseService

  class << self
    def show
      data = send('accounts')
      Account.new(data['data']['attributes'].merge(id: data['data']['id']))
    end
  end
end

class AccountService < BaseService

  def show
    data = parsed_response('accounts')
    Account.new attributes_from_data(data)
  end

  private

  def attributes_from_data(data)
    data['data'][0]['attributes'].merge(id: data['data'][0]['id'])
  end

end

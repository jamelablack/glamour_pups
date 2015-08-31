class AccountsController < ApplicationController
  def show
    @account = AccountService.show
  end
end

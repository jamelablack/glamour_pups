class AccountsController < ApplicationController
  def show
    @account = AccountService.new.show
  end
end

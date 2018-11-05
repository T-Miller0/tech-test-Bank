require_relative "the_date"
require_relative "account_management"
# Statment to show date, amount, balance
class Statement
  attr_reader :account_statement, :account_management

  def initialize (account_management = AccountManagement.new)
    @account_statement = []
    @account_management = account_management
  end

  def deposit_statement (new_date, amount)
    @account_statement.push ({
      Date: new_date,
      Credit_Debit: @account_management.top_up(amount),
      Balance: account_management.balance
    })
  end
end

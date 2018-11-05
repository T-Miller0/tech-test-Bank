require_relative "the_date"
require_relative "account_management"
# Statment to show date, amount, balance
class Statement
  attr_reader :account_statement

  def initialize
    @account_statement = []
  end

  def deposit_statement (new_date, top_up, balance)
    @account_statement.push ({
      Date: new_date,
      Credit_Debit: top_up,
      Balance: balance
    })
  end
end

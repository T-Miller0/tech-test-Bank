require_relative 'the_date'
require_relative 'account_management'
require_relative 'print_statement'

# Statment to show date, amount, balance
class Statement
  attr_reader :account_statement, :account_management

  def initialize(account_management = AccountManagement.new,\
     print_statement = PrintStatement.new)
    @account_statement = []
    @account_management = account_management
    @print_statement = print_statement
  end

  def deposit_statement(new_date, amount)
    @account_statement.push ({
      Date: new_date,
      Credit: account_management.top_up(amount),
      Balance: account_management.total_balance
    })
  end

  def withdrawal_statement(new_date, amount)
    @account_statement.push ({
      Date: new_date,
      Debit: account_management.withdraw(amount),
      Balance: account_management.total_balance
    })
  end

  def show_statement
    @print_statement.my_statement(account_statement)
  end
end

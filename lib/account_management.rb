# AccountManagement to show balance, top_up and withdraw
class AccountManagement
  attr_reader :balance, :total_balance

  def initialize
    @balance = 0
    @total_balance = 0
  end

  def top_up(amount)
    fail "Please input a valid number" unless (amount.is_a? Float) || (amount.is_a? Integer)
    @total_balance += amount
    @balance = amount
  end

  def withdraw(amount)
    fail "Please input a valid number" unless (amount.is_a? Float) || (amount.is_a? Integer)
    fail "Insufficient funds, balance is #{@balance}" if ((@balance -= amount.to_f) < 0)
    @total_balance -= amount
    @balance = -amount
  end
end

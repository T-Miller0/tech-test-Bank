# AccountManagement to show balance, top_up and withdraw
class AccountManagement
  attr_reader :balance, :total_balance

  def initialize
    @balance = 0
    @total_balance = 0
  end

  def top_up(amount)
    amount = valid_amount(amount)
    @total_balance += amount.to_f
    @balance = amount.to_f
  end

  def withdraw(amount)
      amount = valid_amount(amount)
      fail "Insufficient funds, balance is #{@balance}" if ((@balance -= amount.to_f) < 0)
      @total_balance -= amount.to_f
      @balance = amount.to_f
  end

  def valid_amount(amount)
    fail "Please input a valid number" unless (amount.is_a? Float) || (amount.is_a? Integer)
    num = '%.2f' % amount
    return num
  end
end

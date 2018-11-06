# AccountManagement to show balance, top_up and withdraw
class AccountManagement
  attr_reader :balance, :total_balance

  def initialize()
    @balance = 0
    @total_balance = 0
  end

  def top_up(amount)
    @total_balance += amount
    @balance = amount
  end

  def withdraw(amount)
    @total_balance -= amount
    @balance = -amount
  end
end

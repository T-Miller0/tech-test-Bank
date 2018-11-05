# AccountManagement to show balance, top_up and withdraw
class AccountManagement
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end

class Statement
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

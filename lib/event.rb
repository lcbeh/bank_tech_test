class Event
  attr_reader :current_balance, :debit, :credit

  def initialize (balance)
    @current_balance = balance
    @credit = ""
    @debit = ""
  end

  def deposit(amount)
    @credit = amount
    @current_balance += amount
  end

  def withdraw(amount)
    @debit = amount
    @current_balance -= amount
  end

end

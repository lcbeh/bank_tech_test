class BankAccount

  attr_reader :balance, :event

  def initialize (event)
    @balance = 0
    @event = event
  end

  def deposit(amount)
    event = @event.new(@balance)
    @balance = event.deposit(amount)
  end

  def withdraw(amount)
    event = @event.new(@balance)
    @balance = event.withdraw(amount)
  end

end

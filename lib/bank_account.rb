class BankAccount

  attr_reader :balance, :events

  def initialize (event)
    @balance = 0
    @event = event
    @events = []
  end

  def deposit(amount)
    event = @event.new(@balance)
    @balance = event.deposit(amount)
    @events << event.event_log
  end

  def withdraw(amount)
    event = @event.new(@balance)
    @balance = event.withdraw(amount)
    @events << event.event_log
  end

  def print_statement
    statement_header
    puts @events.reverse.each {|event| event + "\n"}
  end

  private

  def statement_header
    puts "date".ljust(10) + " || " + "credit".ljust(10) + " || " + "debit".ljust(10) + " || " + "balance".ljust(10)
  end

end

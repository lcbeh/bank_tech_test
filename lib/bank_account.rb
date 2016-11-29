class BankAccount
  attr_reader :balance

  def initialize (transaction, printer)
    @balance = 0
    @printer = printer
    @transaction = transaction
    @transactions = []
  end

  def deposit(amount)
    transaction = @transaction.new(@balance)
    @balance = transaction.deposit(amount)
    log_transaction(transaction)
  end

  def withdraw(amount)
    transaction = @transaction.new(@balance)
    @balance = transaction.withdraw(amount)
    log_transaction(transaction)
  end

  def print_statement
    @printer.new.print_statement(@transactions)
  end

  private

  def log_transaction(transaction)
    @transactions << transaction.transaction_log
    "Transaction successful."
  end

end

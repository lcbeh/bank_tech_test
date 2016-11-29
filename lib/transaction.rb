class Transaction

  def initialize (balance)
    @current_balance = balance
    @credit = ""
    @debit = ""
    @transaction_date = Time.new.strftime("%d/%m/%Y")
  end

  def deposit(amount)
    @credit = amount
    @current_balance += amount
  end

  def withdraw(amount)
    @debit = amount
    @current_balance -= amount
  end

  def transaction_log
    format_value
    @formatted_transaction_date + " || " + @formatted_credit + " || " + @formatted_debit + " || " + @formatted_current_balance
  end

  private

  def format_value
    @formatted_credit = format_number(@credit)
    @formatted_debit = format_number(@debit)
    @formatted_current_balance = format_number(@current_balance)
    @formatted_transaction_date = @transaction_date.ljust(10)
  end

  def format_number(value)
    (value.is_a?(Fixnum) ? "%.2f" % value : value).ljust(10)
  end

end

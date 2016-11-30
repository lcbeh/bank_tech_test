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
    format_data
  end

  private

  def format_data
    [@transaction_date.ljust(10),format_number(@credit),format_number(@debit), format_number(@current_balance)].join(" || ")
  end

  def format_number(value)
    (value.is_a?(Fixnum) ? "%.2f" % value : value).ljust(10)
  end

end

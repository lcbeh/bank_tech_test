class Printer

  def print_statement(transactions)
    statement_header
    puts transactions.reverse.each {|transaction| transaction + "\n"}
  end

  private

  def statement_header
    puts "date".ljust(10) + " || " + "credit".ljust(10) + " || " + "debit".ljust(10) + " || " + "balance".ljust(10)
  end

end

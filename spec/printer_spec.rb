require 'printer'
require 'bank_account'
require 'transaction'

describe Printer do
  subject(:printer) { Printer.new }

  it "can prints a record of all the transactions" do
    transactions = ["29/11/2016 || 500.00     ||            || 500.00    "]
    statement = "date       || credit     || debit      || balance   \n29/11/2016 || 500.00     ||            || 500.00    \n"
    expect{ printer.print_statement(transactions) }.to output(statement).to_stdout
  end
end

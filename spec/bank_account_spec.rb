require 'bank_account'
require 'transaction'
require 'printer'

describe BankAccount do
  subject(:my_account) { BankAccount.new(Transaction, Printer) }

  it "has zero balance at default" do
    expect(subject.balance).to eq 0
  end

  it "allows user to deposit money" do
    subject.deposit(100)
    expect(subject.balance).to eq 100
  end

  it "allows user to withdraw money" do
    subject.deposit(200)
    subject.withdraw(100)
    expect(subject.balance).to eq 100
  end

  it "has a record of transactions" do
    subject.deposit(500)
    deposit_date = Time.now.strftime("%d/%m/%Y")
    log = "#{deposit_date} || 500.00     ||            || 500.00    "
    transactions = my_account.instance_variable_get(:@transactions)
    expect(transactions).to eq [log]
  end

end

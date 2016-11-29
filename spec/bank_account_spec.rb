require 'bank_account'
require 'event'

describe BankAccount do
  subject(:my_account) { BankAccount.new(Event) }

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

end

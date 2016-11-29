require 'bank_account'

describe BankAccount do
  subject(:bank_account) { BankAccount.new }

  it "has zero balance at default" do
    expect(subject.balance).to eq 0
  end


end

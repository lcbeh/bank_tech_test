require 'bank_account'
require 'event.rb'

describe Event do
  subject(:event) { Event.new(2500) }

  describe "event attributes" do
    it {  is_expected.to have_attributes( current_balance: 2500) }
    it {  is_expected.to have_attributes( credit: "") }
    it {  is_expected.to have_attributes( debit: "") }
  end

  it "can records a deposit" do
    subject.deposit(500)
    expect(subject.current_balance).to eq 3000
  end

  it "can records a withdrawal" do
    subject.withdraw(250)
    expect(subject.current_balance).to eq 2250
  end

end
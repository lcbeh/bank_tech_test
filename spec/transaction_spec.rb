require 'transaction.rb'

describe Transaction do
  subject(:transaction) { Transaction.new(2500) }

  it "can records a deposit" do
    subject.deposit(500)
    expect(get_current_balance).to eq 3000
  end

  it "can records a withdrawal" do
    subject.withdraw(250)
    expect(get_current_balance).to eq 2250
  end

  it "can record the date of transaction at creation" do
    subject.deposit(500)
    deposit_date = Time.now.strftime("%d/%m/%Y")
    expect(get_transaction_date).to eq deposit_date
  end

  it "can return a log of formatted transaction" do
    subject.deposit(500)
    deposit_date = Time.now.strftime("%d/%m/%Y")
    log = "#{deposit_date} || 500.00     ||            || 3000.00   "
    expect(subject.transaction_log).to eq log
  end

  def get_current_balance
    subject.instance_variable_get(:@current_balance)
  end

  def get_transaction_date
    subject.instance_variable_get(:@transaction_date)
  end

end

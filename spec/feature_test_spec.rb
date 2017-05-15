require 'account'

describe Account do
  subject(:account) { described_class.new }

  xit 'should print all transactions in reverse chronological order' do
    date = Date.today.to_s
    account.deposit(1000)
    account.deposit(2000)
    account.withdraw(500)
    expect(account.print_statement).to eq("date || credit || debit || balance\n" +
    "#{date} || || 500.00 || 500.00 \n" +
    "#{date} || 1000.00 || || 1000.00\n")
  end
end

require 'account'

describe Account do
  subject(:account) { described_class.new }

  it 'should print all transactions in reverse chronological order' do
    date = Date.today
    account.deposit(1000)
    account.deposit(2000)
    account.withdraw(500)
    expect(account.print_statement).to eq("date || credit || debit || balance\n" +
    "#{date.strftime("%d/%m/%Y")} || || 500.00 || 2500.00\n" +
    "#{date.strftime("%d/%m/%Y")} || 2000.00 || || 3000.00\n" +
    "#{date.strftime("%d/%m/%Y")} || 1000.00 || || 1000.00\n")
  end
end

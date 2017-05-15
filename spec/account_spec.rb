describe Account do
  subject(:account) { described_class.new }
  subject(:statement) { described_class.new }
  subject(:deposit) { described_class.new }

  describe '#initialization' do
    it 'should create a bance of zero' do
      expect(account.balance).to eq 0
    end
  end

  describe '#make_transaction' do
    it 'when a deposit it should increase the balance' do
      deposit = Deposit.new(100)
      account.make_transaction(deposit)
      expect(account.balance).to eq 100
    end

    it 'when a withdrawl it should decrease the balance' do
      # allow(account).to receive(:balance) { 100 }
      deposit = Deposit.new(100)
      account.make_transaction(deposit)

      withdrawl = Withdrawl.new(25)
      account.make_transaction(withdrawl)
      expect(account.balance).to eq 75
    end
  end

end

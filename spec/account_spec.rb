describe Account do
  subject(:account) { described_class.new }
  subject(:statement) { described_class.new }
  subject(:transaction) { described_class.new }

  describe '#initialization' do
    it 'should create a bance of zero' do
      expect(account.balance).to eq 0
    end
  end

  describe '#balance' do
    it 'should return the balance' do
      account.deposit(100)
      expect(account.balance).to eq 100
    end
  end

  describe '#deposit' do
    it 'when a deposit is made it should increase the balance' do
      account.deposit(100)
      expect(account.balance).to eq 100
    end

    it 'should add transaction to statement' do
      account.deposit(100)
      expect(account.statement.summary).not_to be_empty
    end
  end

  describe '#withdrawl' do
    it 'when a withdrawl it should decrease the balance' do
      # allow(account).to receive(:balance) { 100 }
      account.deposit(100)

      account.withdraw(25)
      expect(account.balance).to eq 75
    end
  end
end

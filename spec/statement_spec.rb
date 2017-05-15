describe Statement do
  subject(:statement) { described_class.new }
  subject(:account) { described_class.new }
  subject(:deposit) { described_class.new }
  subject(:withdrawal) { described_class.new }

  describe 'initialization' do
    it 'should initialize with an empty array' do
      expect(statement.summary).to be_empty
    end
  end

  # describe '#print' do
  #   # allow(:statement).to receive(:summary) { [[]] }
  #   # mock deposits & withdrawls
  #
  #   it 'should print out all transactions' do
  #     statement.summary = ["15/05/2017", Deposit, 100, 100.0]
  #     expect(statement.print).to eq "15/05/2017 || Deposit || 100 || 100.0"
  #   end
  # end
end

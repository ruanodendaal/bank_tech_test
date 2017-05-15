describe Statement do
  subject(:statement) { described_class.new }
  subject(:account) { described_class.new }
  subject(:transaction) { described_class.new }

  describe 'initialization' do
    it 'should initialize with an empty array' do
      expect(statement.summary).to be_empty
    end
  end

  # describe '#print' do
  #   # allow(:statement).to receive(:summary) { [[]] }
  #   # mock deposits & withdrawls
  #   before do
  #     trans_one = [:amount=> 1000, :balance=>1000, :date=>"15/05/17"]
  #     allow(statement).to receive(:summary).and_return([trans_one])
  #   end
  #
  #   it 'should print out all transactions' do
  #     expect(statement.print).to eq "15/05/2017 || 1000.00 || || 1000.00"
  #   end
  # end
end

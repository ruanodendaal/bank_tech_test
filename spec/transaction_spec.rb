describe Transaction do
  subject(:transaction) { described_class.new(100, 0) }
  let(:amount) { double :amount }
  let(:balance) { double :balance }

  describe 'initialization' do
    it 'should take an amount on initialization' do
      expect(transaction.amount).to eq 100
    end

    it 'should store created date' do
      Timecop.freeze do
        expect(transaction.date).to eq Date.today
      end
    end
  end

end

describe Deposit do
  subject(:deposit) { described_class.new(100) }
  let(:amount) { double :amount }

  describe 'initialization' do

    it 'should take an amount on initialization' do
      expect(deposit.amount).to eq 100
    end

    it 'should store created date' do
      Timecop.freeze do
        expect(deposit.date).to eq Date.today
      end
    end
  end

end

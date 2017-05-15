describe Withdrawl do
  subject(:withdrawl) { described_class.new(25) }
  let(:amount) { double :amount }

  describe 'initialization' do
    it 'should take an amount on initialization' do
      expect(withdrawl.amount).to eq 25
    end

    it 'should store created date' do
      Timecop.freeze do
        expect(withdrawl.date).to eq Date.today
      end
    end
  end
end

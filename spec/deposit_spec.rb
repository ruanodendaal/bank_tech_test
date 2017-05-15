describe Deposit do
  subject(:deposit) { described_class.new }
  let(:amount) { double :amount }

  describe 'initialization' do
    it 'should take an amount on initialization' do
      deposit = Deposit.new(100)
      expect(deposit.amount).to eq 100
    end
  end
end

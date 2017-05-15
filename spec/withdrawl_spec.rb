describe Withdrawl do
  subject(:withdrawl) { described_class.new }
  let(:amount) { double :amount }

  describe 'initialization' do
    it 'should take an amount on initialization' do
      withdrawl = Withdrawl.new(100)
      expect(withdrawl.amount).to eq 100
    end
  end
end

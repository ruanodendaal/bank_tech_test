require 'date'

class Transaction

  attr_reader :amount, :balance, :date

  def initialize(amount, balance)
    @amount = amount
    @balance = balance
    @date = Date.today
  end
end

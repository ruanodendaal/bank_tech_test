require_relative 'statement'

class Account

  attr_reader :balance, :statement

  def initialize
    @balance = 0
    @statement = Statement.new
  end

  def make_transaction(transaction)
     if transaction.instance_of? Deposit
       self.balance += transaction.amount
     elsif transaction.instance_of? Withdrawl
       self.balance -= transaction.amount
     end
  end

  private

  attr_writer :balance
  
end

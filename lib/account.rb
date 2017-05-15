require_relative 'statement'
require_relative 'transaction'

class Account

  attr_reader :balance, :statement

  def initialize(balance = 0)
    @balance = balance
    @statement = Statement.new
  end

  def balance
    @balance
  end

  def deposit(amount)
    self.balance += amount
    transaction = Transaction.new(amount, balance)
    update_statement(transaction)
  end

  def withdraw(amount)
    self.balance -= amount
    transaction = Transaction.new(-amount, balance)
    update_statement(transaction)
  end


  def print_statement
    statement.print
  end

  private

  attr_writer :balance

  def update_statement(transaction)
    self.statement.summary << transaction
  end

end

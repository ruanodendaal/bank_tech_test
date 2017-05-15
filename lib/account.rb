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
    add_to_balance(amount)
    transaction = Transaction.new(amount, balance)
    update_statement(transaction)
  end

  def withdraw(amount)
    remove_from_balace(amount)
    transaction = Transaction.new(-amount, balance)
    update_statement(transaction)
  end

  def print_statement
    self.statement.print
  end

  private

  attr_writer :balance

  def add_to_balance(amount)
    self.balance += amount
  end

  def remove_from_balace(amount)
    self.balance -= amount
  end

  def update_statement(transaction)
    self.statement.summary << transaction
  end

end

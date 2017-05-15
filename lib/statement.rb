class Statement

  attr_reader :summary

  def initialize
    @summary = []
  end

  def print
    output = "date || credit || debit || balance"
    self.summary.reverse.each do |item|
      if item.amount > 0
        credit(item.date, item.amount, item.balance)
      else
        debit(item.date, item.amount, item.balance)
      end
    end
  end

  private

  def credit(date, amount, balance)
    puts "#{date.strftime("%d/%m/%Y")} || #{sprintf('%.2f', amount)} || || #{sprintf('%.2f', balance)}"
  end

  def debit(date, amount, balance)
    puts "#{date.strftime("%d/%m/%Y")} || || #{sprintf('%.2f', amount.abs)} || #{sprintf('%.2f', balance)}"
  end

end

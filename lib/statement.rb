class Statement

  attr_reader :summary, :output

  def initialize
    @summary = []
    @output = ""
  end

  def print
    output = "date || credit || debit || balance\n"
    self.summary.reverse.each do |item|
      if item.amount > 0
        output += credit(item.date, item.amount, item.balance)
      else
        output += debit(item.date, item.amount, item.balance)
      end
    end
    return output
  end

  private

  def credit(date, amount, balance)
    "#{date.strftime("%d/%m/%Y")} || #{sprintf('%.2f', amount)} || || #{sprintf('%.2f', balance)}\n"
  end

  def debit(date, amount, balance)
   "#{date.strftime("%d/%m/%Y")} || || #{sprintf('%.2f', amount.abs)} || #{sprintf('%.2f', balance)}\n"
  end

end

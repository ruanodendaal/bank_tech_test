class Statement

  attr_accessor :summary

  def initialize
    @summary = []
  end

  def print
    puts "date || credit || debit || balance"
  end

end

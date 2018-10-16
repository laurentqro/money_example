module MoneyExample
  class Money
    attr_reader :amount

    def initialize(amount)
      @amount = amount
    end

    def equals?(another)
      amount == another.amount
    end
  end
end
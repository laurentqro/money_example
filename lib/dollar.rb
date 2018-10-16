module MoneyExample
  class Dollar
    attr_reader :amount

    def initialize(amount)
      @amount = amount
    end

    def times(multiplier)
      Dollar.new(amount * multiplier)
    end

    def equals?(another)
      amount == another.amount
    end
  end
end
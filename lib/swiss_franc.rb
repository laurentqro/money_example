module MoneyExample
  class SwissFranc
    attr_reader :amount

    def initialize(amount)
      @amount = amount
    end

    def times(multiplier)
      SwissFranc.new(amount * multiplier)
    end

    def equals?(another)
      amount == another.amount
    end
  end
end
module MoneyExample
  class Money
    attr_reader :amount, :currency

    def initialize(amount, currency)
      @amount = amount
      @currency = currency
    end

    def equals?(another)
      (self.amount == another.amount) && self.currency == (another.currency)
    end

    def times(multiplier)
      MoneyExample::Money.new(amount * multiplier, currency)
    end

    def self.dollar(amount)
      MoneyExample::Money.new(amount, "USD")
    end

    def self.swiss_franc(amount)
      MoneyExample::Money.new(amount, "CHF")
    end
  end
end
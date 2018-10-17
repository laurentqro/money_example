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

    def plus(addendum)
      MoneyExample::Money.new(self.amount + addendum.amount, self.currency)
    end

    def reduce(bank, target_currency)
      rate = bank.rate(self.currency, target_currency)
      MoneyExample::Money.new(amount / rate, target_currency)
    end
  end
end
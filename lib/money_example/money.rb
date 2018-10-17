require "money_example/expression"

module MoneyExample
  class Money
    include MoneyExample::Expression

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
  end
end
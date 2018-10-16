module MoneyExample
  class Money
    attr_reader :amount, :currency

    def initialize(amount, currency)
      @amount = amount
      @currency = currency
    end

    def equals?(another)
      (self.amount == another.amount) && (self.class == another.class)
    end

    def self.dollar(amount)
      Dollar.new(amount, "USD")
    end

    def self.swiss_franc(amount)
      SwissFranc.new(amount, "CHF")
    end
  end
end
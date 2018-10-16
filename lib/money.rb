module MoneyExample
  class Money
    attr_reader :amount

    def initialize(amount)
      @amount = amount
    end

    def equals?(another)
      (self.amount == another.amount) && (self.class == another.class)
    end

    def self.dollar(amount)
      Dollar.new(amount)
    end

    def self.swiss_franc(amount)
      SwissFranc.new(amount)
    end
  end
end
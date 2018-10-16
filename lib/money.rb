module MoneyExample
  class Money
    attr_reader :amount

    def initialize(amount)
      @amount = amount
    end

    def equals?(another)
      (self.amount == another.amount) && (self.class == another.class)
    end
  end
end
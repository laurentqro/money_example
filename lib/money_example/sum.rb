module MoneyExample
  class Sum
    attr_reader :augend, :addend

    def initialize(augend, addend)
      @augend = augend
      @addend = addend
    end

    def reduce(bank, target_currency)
      amount = augend.reduce(bank, target_currency).amount + addend.reduce(bank, target_currency).amount
      MoneyExample::Money.new(amount, target_currency)
    end

    def plus(addend)
      MoneyExample::Sum.new(self, addend)
    end
  end
end
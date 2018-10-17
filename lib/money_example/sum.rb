module MoneyExample
  class Sum
    attr_reader :augend, :addend

    def initialize(augend, addend)
      @augend = augend
      @addend = addend
    end

    def reduce(bank, target_currency)
      MoneyExample::Money.new(augend.amount + addend.amount, target_currency)
    end
  end
end
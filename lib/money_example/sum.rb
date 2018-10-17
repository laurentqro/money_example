require "money_example/expression"

module MoneyExample
  class Sum
    include MoneyExample::Expression

    attr_reader :augend, :addend

    def initialize(augend, addend)
      @augend = augend
      @addend = addend
    end

    def reduce(target_currency)
      MoneyExample::Money.new(augend.amount + addend.amount, target_currency)
    end
  end
end
require "money"

module MoneyExample
  class Dollar < Money
    def times(multiplier)
      Dollar.new(amount * multiplier)
    end

    def currency
      "USD"
    end
  end
end

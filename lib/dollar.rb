require "money"

module MoneyExample
  class Dollar < Money
    def times(multiplier)
      MoneyExample::Money.dollar(amount * multiplier)
    end
  end
end

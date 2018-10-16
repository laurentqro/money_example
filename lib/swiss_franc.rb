module MoneyExample
  class SwissFranc < Money
    def times(multiplier)
      MoneyExample::Money.swiss_franc(amount * multiplier)
    end
  end
end
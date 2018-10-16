module MoneyExample
  class SwissFranc < Money
    def times(multiplier)
      SwissFranc.new(amount * multiplier)
    end
  end
end
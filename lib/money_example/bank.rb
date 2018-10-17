module MoneyExample
  class Bank
    def reduce(source, target)
      source.reduce(self, target)
    end

    def rate(source, target)
      return 1 if source == target

      pair = Pair.new(source, target).name
      RATES[pair]
    end

    RATES = {
      "CHF/USD" => 2
    }
  end
end
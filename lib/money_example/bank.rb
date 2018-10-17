module MoneyExample
  class Bank
    def reduce(source, target)
      source.reduce(self, target)
    end

    def rate(source_currency, target_currency)
      source_currency == "CHF" && target_currency == "USD" ? 2 : 1
    end
  end
end
RSpec.describe MoneyExample do
  it "multiplies Dollars" do
    five = MoneyExample::Money.dollar(5)

    expect(MoneyExample::Money.dollar(10).equals?(five.times(2))).to be true
    expect(MoneyExample::Money.dollar(15).equals?(five.times(3))).to be true
  end

  it "compares money" do
    expect(MoneyExample::Money.dollar(5).equals?(MoneyExample::Money.dollar(5))).to be true
    expect(MoneyExample::Money.dollar(6).equals?(MoneyExample::Money.dollar(5))).to be false
    expect(MoneyExample::Money.swiss_franc(6).equals?(MoneyExample::Money.dollar(6))).to be false
  end

  it "multiplies Swiss Francs" do
    five = MoneyExample::Money.swiss_franc(5)
    expect(MoneyExample::Money.swiss_franc(10).equals?(five.times(2))).to be true
  end

  it "has a currency" do
    expect(MoneyExample::Money.dollar(1).currency).to eql "USD"
    expect(MoneyExample::Money.swiss_franc(1).currency).to eql "CHF"
  end

  describe "Money#plus" do
    it "adds two moneys" do
      five = MoneyExample::Money.dollar(5)
      sum = five.plus(five)
      bank = MoneyExample::Bank.new
      result = bank.reduce(sum, "USD")

      expect(result.equals?(MoneyExample::Money.dollar(10)))
    end

    it "adds money from two different currencies" do
      five_dollars = MoneyExample::Money.dollar(5)
      ten_swiss = MoneyExample::Money.swiss_franc(10)
      bank = MoneyExample::Bank.new
      sum = five_dollars.plus(ten_swiss)
      result = bank.reduce(sum, "USD")

      expect(result.equals?(MoneyExample::Money.dollar(10))).to be true
    end
  end

  describe "Bank#reduce" do
    it "reduces a sum expression" do
      five = MoneyExample::Money.dollar(5)
      three = MoneyExample::Money.dollar(3)
      sum = five.plus(three)
      bank = MoneyExample::Bank.new
      result = bank.reduce(sum, "USD")

      expect(result.equals?(MoneyExample::Money.dollar(8))).to be true
    end

    it "reduces money" do
      bank = MoneyExample::Bank.new
      result = bank.reduce(MoneyExample::Money.dollar(1), "USD")

      expect(result.equals?(MoneyExample::Money.dollar(1)))
    end

    it "reduces moneys from different currencies" do
      bank = MoneyExample::Bank.new
      result = bank.reduce(MoneyExample::Money.swiss_franc(2), "USD")

      expect(result.equals?(MoneyExample::Money.new(1, "USD"))).to be true
    end
  end

  describe "Sum" do
    describe "#plus" do
      it "adds sums" do
        five_dollars = MoneyExample::Money.dollar(5)
        ten_swiss = MoneyExample::Money.swiss_franc(10)
        bank = MoneyExample::Bank.new
        sum = MoneyExample::Sum.new(five_dollars, ten_swiss).plus(five_dollars)
        result = bank.reduce(sum, "USD")

        expect(result.equals?(MoneyExample::Money.dollar(15))).to be true
      end
    end

    describe "#times" do
      it "multiplies sums" do
        five_dollars = MoneyExample::Money.dollar(5)
        ten_swiss = MoneyExample::Money.swiss_franc(10)
        bank = MoneyExample::Bank.new
        sum = MoneyExample::Sum.new(five_dollars, ten_swiss).times(2)
        result = bank.reduce(sum, "USD")

        expect(result.equals?(MoneyExample::Money.dollar(20))).to be true
      end
    end
  end
end

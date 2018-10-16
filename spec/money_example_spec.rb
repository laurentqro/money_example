RSpec.describe MoneyExample do
  it "multiplies Dollars" do
    five = MoneyExample::Money.dollar(5)

    expect(MoneyExample::Money.dollar(10).equals?(five.times(2))).to be true
    expect(MoneyExample::Money.dollar(15).equals?(five.times(3))).to be true
  end

  it "compares dollars" do
    expect(MoneyExample::Money.dollar(5).equals?(MoneyExample::Money.dollar(5))).to be true
    expect(MoneyExample::Money.dollar(6).equals?(MoneyExample::Money.dollar(5))).to be false
  end

  it "multiplies Swiss Francs" do
    five = MoneyExample::Money.swiss_franc(5)
    expect(MoneyExample::Money.swiss_franc(10).equals?(five.times(2))).to be true
  end

  it "compares Swiss Francs" do
    expect(MoneyExample::Money.swiss_franc(5).equals?(MoneyExample::Money.swiss_franc(5))).to be true
    expect(MoneyExample::Money.swiss_franc(6).equals?(MoneyExample::Money.swiss_franc(5))).to be false
  end

  it "compares across currencies" do
    expect(MoneyExample::Money.swiss_franc(6).equals?(MoneyExample::Money.dollar(6))).to be false
  end
end

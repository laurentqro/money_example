RSpec.describe MoneyExample do
  it "multiplies Dollars" do
    five = MoneyExample::Dollar.new(5)

    expect(MoneyExample::Dollar.new(10).equals?(five.times(2))).to be true
    expect(MoneyExample::Dollar.new(15).equals?(five.times(3))).to be true
  end

  it "compares dollars" do
    expect(MoneyExample::Dollar.new(5).equals?(MoneyExample::Dollar.new(5))).to be true
    expect(MoneyExample::Dollar.new(6).equals?(MoneyExample::Dollar.new(5))).to be false
  end

  it "multiplies Swiss Francs" do
    five = MoneyExample::SwissFranc.new(5)
    expect(MoneyExample::SwissFranc.new(10).equals?(five.times(2))).to be true
  end

  it "compares Swiss Francs" do
    expect(MoneyExample::SwissFranc.new(5).equals?(MoneyExample::SwissFranc.new(5))).to be true
    expect(MoneyExample::SwissFranc.new(6).equals?(MoneyExample::SwissFranc.new(5))).to be false
  end

  it "compares across currencies" do
    expect(MoneyExample::SwissFranc.new(6).equals?(MoneyExample::Dollar.new(6))).to be false
  end
end

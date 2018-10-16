RSpec.describe MoneyExample do
  it "multiplies" do
    five = MoneyExample::Dollar.new(5)

    expect(MoneyExample::Dollar.new(10).equals?(five.times(2))).to be true
    expect(MoneyExample::Dollar.new(15).equals?(five.times(3))).to be true
  end

  it "is equal" do
    expect(MoneyExample::Dollar.new(5).equals?(MoneyExample::Dollar.new(5))).to be true
    expect(MoneyExample::Dollar.new(6).equals?(MoneyExample::Dollar.new(5))).to be false
  end
end

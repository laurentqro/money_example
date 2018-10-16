RSpec.describe MoneyExample do
  it "multiplies" do
    five = MoneyExample::Dollar.new(5)
    five.times(2)

    expect(five.amount).to eql 10
  end
end

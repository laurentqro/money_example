RSpec.describe MoneyExample do
  it "multiplies" do
    five = MoneyExample::Dollar.new(5)

    product = five.times(2)
    expect(product.amount).to eql 10

    product = five.times(3)
    expect(product.amount).to eql 15
  end
end

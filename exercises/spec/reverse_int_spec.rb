require 'reverse_int'

RSpec.describe ReverseInt do
  it 'should implement \'reverse_int\'' do
    expect(ReverseInt.new).to respond_to(:reverse_int)
  end

  it 'handles 0 as an input' do
    expect(ReverseInt.new(0).reverse_int).to eq(0)
  end

  it 'flips a positive number' do
    expect(ReverseInt.new(5).reverse_int).to eq(5)
    expect(ReverseInt.new(15).reverse_int).to eq(51)
    expect(ReverseInt.new(90).reverse_int).to eq(9)
    expect(ReverseInt.new(2359).reverse_int).to eq(9532)
  end

  it 'flips a negative number' do
    expect(ReverseInt.new(-5).reverse_int).to eq(-5)
    expect(ReverseInt.new(-15).reverse_int).to eq(-51)
    expect(ReverseInt.new(-90).reverse_int).to eq(-9)
    expect(ReverseInt.new(-2359).reverse_int).to eq(-9532)
  end
end

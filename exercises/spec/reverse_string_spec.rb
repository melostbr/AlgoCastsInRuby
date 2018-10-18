require 'reverse_string'

RSpec.describe ReverseString do
  it 'should implement \'reverse\'' do
    expect(ReverseString.new).to respond_to(:reverse)
  end

  it "returns 'dcba' if given 'abcd'" do
    expect(ReverseString.new('abcd').reverse).to eq('dcba')
  end

  it "returns ' dcba' if given 'abcd '" do
    expect(ReverseString.new('abcd ').reverse).to eq(' dcba')
  end
end

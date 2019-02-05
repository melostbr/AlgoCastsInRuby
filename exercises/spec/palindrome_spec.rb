require 'palindrome'

RSpec.describe Palindrome do
  it 'should implement \'palindrome\'' do
    expect(Palindrome.new).to respond_to(:palindrome?)
  end

  it '\'aba\' is a palindrome' do
    expect(Palindrome.new('aba').palindrome?).to eq true
  end

  it '\' aba\' is not a palindrome' do
    expect(Palindrome.new(' aba').palindrome?).to eq false
  end

  it '\'aba \' is not a palindrome' do
    expect(Palindrome.new(' aba').palindrome?).to eq false
  end

  it '\'greetings\' is not a palindrome' do
    expect(Palindrome.new('greetings').palindrome?).to eq false
  end

  it '\'1000000001\' is a palindrome' do
    expect(Palindrome.new('1000000001').palindrome?).to eq true
  end

  it '\'Fish hsif\' is not a palindrome' do
    expect(Palindrome.new('Fish hsif').palindrome?).to eq false
  end

  it '\'pennep\' is a palindrome' do
    expect(Palindrome.new('pennep').palindrome?).to eq true
  end
end

# Given a string, return true if the string is a palindrome
# or false if it is not.  Palindromes are strings that
# form the same word if it is reversed. *Do* include spaces
# and punctuation in determining if the string is a palindrome.
Palindrome = Struct.new(:string) do
  def palindrome?
    string.chars.map.with_index {|el, i| el == string[string.length - i - 1]}.all?
  end
end

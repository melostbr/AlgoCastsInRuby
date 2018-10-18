# Given a string, return a new string with the reversed order of characters
ReverseString = Struct.new(:string) do
  def reverse
    string.chars.reduce { |reversed, char| char + reversed }
  end
end

# ## Other solutions
#
# First obvious solution:
#   def reverse
#     string.chars.reverse.join
#   end
#
# Second not so obvious solution:
#   def reverse
#     reversed = ""
#     for char in string.chars do
#       reversed = char + reversed
#     end
#     reversed
#   end

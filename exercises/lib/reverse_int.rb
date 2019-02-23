# --- Directions
# Given an integer, return an integer that is the reverse
# ordering of numbers.
# --- Examples
#   reverseInt(15) === 51
#   reverseInt(981) === 189
#   reverseInt(500) === 5
#   reverseInt(-15) === -51
#   reverseInt(-90) === -9

ReverseInt = Struct.new(:n) do
  def reverse_int
    if n < 0
      n.to_s.chars.drop(1).reverse.insert(0, "-").join.to_i
    else
      n.to_s.chars.reverse.join.to_i
    end
  end
end

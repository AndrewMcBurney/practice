# frozen_string_literal: true

#
# Function with the single responsibility to check if a string is a palindrome
# permutation (whitespace agnostic)
#
# If n is the length of the string:
# - The overall time complexity is O(n) + O(n) => O(n)
#
def palindrome_permutation?(str)
  chars = {}

  # O(n)
  str.gsub(/\s+/, "").downcase.each_char do |c|
    chars[c] = 0 unless chars[c] # O(1)
    chars[c] += 1                # O(1)
  end

  # n * O(f), where f is the work done in the block => O(n), since work done in
  # block is constant time operation
  _even, odd = chars.values.partition(&:even?)
  odd.size <= 1 ? true : false
end

# Example usage
#
# palindrome_permutation?("Tact Coa") => true
#

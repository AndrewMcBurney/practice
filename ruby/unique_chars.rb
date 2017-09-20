# frozen_string_literal: true

#
# Function with the single responsibility to check if a string has no repeated
# characters
#
# If n is the length of the string:
# - The algorithm does one pass through the string, making it O(n) runtime
#
def unique_chars?(str)
  chars = {}

  str.each_char do |s|
    return false if chars[s]
    chars[s] = true
  end

  true
end

# Example usage
#
# unique_chars?("abcd") => true
# unique_chars?("abad") => false
#

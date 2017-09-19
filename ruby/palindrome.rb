# frozen_string_literal: true

#
# Class with the single responsibility to check if a string is a palindrome
#
# The class' public interface is `palindrome?`, which returns a boolean denoting
# if the given string passed in during instantiation is a palindrome
#
# If n is the length of the string:
# - The algorithm makes n/2 comparisons, making it O(n) runtime
# - The spacial complexity is one string, ie. O(n)
#
class PalindromeChecker
  attr_reader :str
  def initialize(str)
    @str = str
  end

  def palindrome?
    return true if str.size == 1
    median = str.size / 2

    if str.size.odd?
      compare(median - 1, median + 1)
    else
      compare(median - 1, median)
    end
  end

  private

  def compare(lower, upper)
    return true  if lower.zero? && str[lower] == str[upper]
    return false if str[lower] != str[upper]
    compare(lower - 1, upper + 1)
  end
end

# Example usage
#
# PalindromeChecker.new("ababa").palindrome? => true
# PalindromeChecker.new("aabad").palindrome? => false
# PalindromeChecker.new("a").palindrome?     => true
#

# Given a string, find the length of the longest substring without repeating
# characters.
#
# @param [String] s
# @return [Integer]
def length_of_longest_substring(s)
  max = 0

  s.each_char.with_index do |a, i|
    dict = { a => true }
    count = 1

    s[(i + 1)..-1].each_char do |c|
      break if dict[c]
      count += 1
      dict[c] = true
    end

    max = count if count > max
  end

  max
end

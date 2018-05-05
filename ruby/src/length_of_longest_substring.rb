# Given a string, find the length of the longest substring without repeating
# characters.
#
# @param [String] str
# @return [Integer]
def length_of_longest_substring(str)
  max = 0

  str.each_char.with_index do |s, i|
    dict = { s => true }
    count = 1

    str[(i + 1)..-1].each_char do |c|
      if dict[c]
        max = count if count > max
        break
      end

      count += 1
      dict[c] = true
    end
  end

  max
end

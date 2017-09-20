# frozen_string_literal: true

def urlify!(str)
  str.strip.gsub(/\s+/, "%20")
end

# Example usage
#
# urlify!("Mr John Smith   ")   => "Mr%20John%20Smith"
# urlify!("Andrew      Robert") => "Andrew%20Robert"
#

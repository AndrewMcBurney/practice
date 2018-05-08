# frozen_string_literal: true

require_relative "../src/length_of_longest_substring.rb"

describe "length_of_longest_substring" do
  it "works for test case one" do
    str = "abcabcbb"
    expect(length_of_longest_substring(str)).to be(3)
  end

  it "works for test case two" do
    str = "bbbbb"
    expect(length_of_longest_substring(str)).to be(1)
  end

  it "works for test case three" do
    str = "pwwkew"
    expect(length_of_longest_substring(str)).to be(3)
  end

  it "works on a empty string" do
    str = ""
    expect(length_of_longest_substring(str)).to be(0)
  end

  it "works on a one-character string" do
    str = "a"
    expect(length_of_longest_substring(str)).to be(1)
  end

  it "works on a two-character string" do
    str = "au"
    expect(length_of_longest_substring(str)).to be(2)
  end
end

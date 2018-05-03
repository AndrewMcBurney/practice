# frozen_string_literal: true

require_relative "../src/two_sum.rb"

describe "two_sum" do
  it "works for all positive numbers" do
    nums = [2, 7, 11, 15]
    target = 9
    expect(two_sum(nums, target)).to match_array([0, 1])
  end

  it "works when there's a zero value" do
    nums = [10, 25, 0, 12]
    target = 25
    expect(two_sum(nums, target)).to match_array([1, 2])
  end

  it "works when there are negative numbers" do
    nums = [12, 25, 0, -12]
    target = 13
    expect(two_sum(nums, target)).to match_array([1, 3])
  end
end

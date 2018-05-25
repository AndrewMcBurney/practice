# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  nums.map.with_index { |n, i| nums.reject.with_index { |a, j| i == j }.inject(:*) }
end

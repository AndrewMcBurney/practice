# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  counts = {}
  nums.each { |n| counts[n] = counts[n].nil? ? 1 : counts[n] + 1 }
  counts.max_by { |_k, v| v }.first
end

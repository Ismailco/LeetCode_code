# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
    nums.each_with_index do |num, i|
        nums[i] = num*num
    end
    nums.sort!
end
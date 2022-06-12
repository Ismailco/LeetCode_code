# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
    evenNums = 0
    nums.each do |num|
        if num.to_s.length % 2 == 0
            evenNums += 1
        end
    end
    evenNums
end
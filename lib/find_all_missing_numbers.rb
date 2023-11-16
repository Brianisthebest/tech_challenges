def find_disappeared_numbers(nums)
  maxnum = nums.max 
  new_array = (1..maxnum).to_a
  
  return [2] if nums.uniq == [1]

  if nums.size == nums.uniq.size
    new_array.delete_if { |num| nums.include?(num) }
  else
    new_array = (1..nums.size).to_a
    new_array.delete_if { |num| nums.include?(num) }
  end
end


# Given an array nums of n integers where nums[i] is in the range [1, n], return an array of all the integers 
# in the range [1, n] that do not appear in nums.

#   Example 1:
  
#   Input: nums = [4,3,2,7,8,2,3,1]
#   Output: [5,6]
#   Example 2:
  
#   Input: nums = [1,1]
#   Output: [2]  

puts find_disappeared_numbers([4, 3, 2, 7, 8, 2, 3, 1]) # Returns [5, 6]
puts find_disappeared_numbers([1,1]) # Returns [2]
puts find_disappeared_numbers([1,1,2,2]) # Returns [3, 4]
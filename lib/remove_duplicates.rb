def remove_duplicates(nums)
  nums.uniq!
  nums.length
end

p remove_duplicates([1,1,2])
p remove_duplicates([1])
def remove_element(nums, val)
    new_array = []

    nums.each do |num|
      if num != val
        new_array.push(num)
      end
    end
    new_array
end

p remove_element([3,2,2,3], 3) # [2. 2]
p remove_element([0,1,2,2,3,0,4,2], 2) # [0,1,4,0,3]
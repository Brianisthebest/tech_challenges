# I want to iterate over all three arrays
# look for any numbers that appear in all the arrays
# return those numbers in a new array
def find_matches(array1, array2, array3)
  matches = []
  array1.each do |num|
    if array2.include?(num) && array3.include?(num)
      matches << num
    end
  end
  p matches
end


nums_1 = [1, 2, 4, 5, 8]
nums_2 = [2, 3, 5, 7, 9]
nums_3 = [1, 2, 5, 8, 9]
find_matches(nums_1, nums_2, nums_3)
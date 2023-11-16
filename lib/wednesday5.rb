# Using a language of your choice -> 	For a given 2D array containing integer elements, write code to find the minimum length and maximum length.

def find_arrays(arrays)
  arrays.each_with_index do |array, i|
    array.each do |element|
      if element.class != Integer
        arrays.delete(arrays[i])
      end
    end
  end

  max = arrays.first
  min = arrays.first

  arrays.each do |array|
    if array.size > max.size
      max = array
    elsif array.size < min.size
      min = array
    end
  end
  return "The smallest array is #{min} and the largest array is #{max}"
end



p find_arrays([[1, 2, 3, 4], [4, 3, 2, 1]]) # returns the first array for min and max
p find_arrays([[1, 2, 3], [1, 2, 3, 4], [1, 2]]) # returns the second for max and last for min
p find_arrays([[1, 2, 3, 4, 5], [1, 2], [1, 2, 3, 4]]) # returns first for max and second for min
p find_arrays([[1, 2, "E"], [1, 2, 3, 4]]) # Non integer can not be min or max
p find_arrays([])
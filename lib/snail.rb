# Instructions
# Given an n x n array, write a method that returns the array elements arranged from outermost elements to the middle element, traveling clockwise.

# A good way to visualize this is to picture the spiral shell of a snail!

# Example

#     #Ruby
    array_matrix = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
    ];

#     => [1, 2, 3, 6, 9, 8, 7, 4, 5]

def snail(array_matrix)
  new_array = []
  new_array << array_matrix.shift

  array_matrix.each do |array|
    new_array << array.pop 
  end

  new_array << array_matrix.pop.reverse
  new_array << array_matrix
  new_array.flatten
end



p snail(array_matrix)
# set an empty array
# shove first array into new one
# work down the end of each array
# move backwards to first index
# up to next array
# work to the middle
# Using a language of your choice -> write a program that takes in two lists and returns a list containing only the 
# common numbers: Ex: [1, 1, 2, 3, 5, 9, 13, 14, 34, 55, 89] and [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 15, 22, 54]


# We want that takes in two parameters
# Look at each array and then shove numbers into a new array that are in each of the two we look at
# return that array with the same elements

def find_same(array_1, array_2)
  same = []

  array_1.each do |num|
    if num.class == Integer && array_2.include?(num)
      same << num
    end
  end
  same.uniq
end

p find_same([1,1,2,3,'string'], [1,1,3,4,'string'])

# Making only integers are returned
# Making no duplicates are returned
# Making sure no empty arrays are sent
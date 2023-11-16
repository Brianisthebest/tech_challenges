# def recursive_addition(nums)
#   if nums.empty?
#     return 0
#   end

#   first_number = nums.shift

#   first_number + recursive_addition(nums)
# end

# puts recursive_addition([1,2,3,4,5,6,7,8,9,10])

# def get_factoral(num)
#   if num == 0
#     return 1
#   end

#   first_number = num

#   first_number * get_factoral(num -= 1)
# end

# puts get_factoral(5)

def string_reverse(string)
  if string.length == 0
    return ''
  end

  last_letter = string[-1]

  last_letter + string_reverse(string[0..-2])
end

puts string_reverse('hello')

# def power(base, exponent)
#   if exponent == 0
#     return 1
#   end

#   base * power(base, exponent -= 1)
# end

# puts power(2, 4)

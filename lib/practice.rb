# A palindrome is any number, word, or phrase that reads the same forward as it does backward. 
# In this challenge, we are going to focus on palindromic numbers. For example, 12321 is a palindromic number, whereas 123 is not.

# Write a method/function that starts at 0 and finds the first twenty-five numbers where the number plus its inverse equals a 
# palindrome that is greater than 1,000.

# 47(number) + 74(inverse) = 121(palindrome) Note: This does not meet the greater than 1,000 rule.

# Collect the twenty-five numbers in an array as the return value. Be sure to collect the number and not the sum.

# take the number, add the inverse, check and see if it's greater than 1000, 
# if it is << into an array, do that 25 times and then return that array

def palindrome_inverse
  start_num = 0
  sum = 0
  palindromes = []

  while palindromes.count < 25
    sum = start_num + start_num.to_s.reverse.to_i

    if sum == sum.to_s.reverse.to_i && sum > 1000
      palindromes << sum if !palindromes.include?(sum)
    end
    start_num += 1
  end
  palindromes
end

p palindrome_inverse
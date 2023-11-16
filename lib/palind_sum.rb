# A palindrome is any number, word, or phrase that reads the same forward as it does backward. 
# In this challenge, we are going to focus on palindromic numbers. For example, 12321 is a palindromic number, whereas 123 is not.

# Write a method/function that starts at 0 and finds the first twenty-five numbers where the number plus its inverse equals a palindrome that is greater than 1,000.

# 47(number) + 74(inverse) = 121(palindrome) Note: This does not meet the greater than 1,000 rule.

# Collect the twenty-five numbers in an array as the return value. Be sure to collect the number and not the sum.

# Bonus: Once you’ve found a working solution, see if you can create a solution without converting the numbers to strings/arrays.

# start at 0, add inverse, see if the sum is the same forwards and backwards, see if it's size is larger than 1000
# if yes, shove NUMBER not SUM into an array,
# if no, fuck off
# stop when 25 numbers are in the array

def palindromne_sum
  number = 0
  total = 0
  matches = []

  until matches.count == 25
    total = number + number.to_s.reverse.to_i
    if total.to_s == total.to_s.reverse && number.to_s.size >= 4
      matches << number
      number += 1
    else
      number += 1
    end
  end
  matches
end

p palindromne_sum
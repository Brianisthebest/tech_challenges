# Using a language of your choice -> 	Write a program that returns the longest palindrome substring of a given string.

def largest_palindrome(string)
  pal = "not"
  ending = -2
  beginning = 1

  if string == string.reverse
    return string
  end

  until pal == pal.reverse
    if string[beginning..ending] == string[beginning..ending].reverse
      pal = string[beginning..ending]
    elsif string[0..ending] == string[0..ending].reverse
      pal = string[0..ending]
    elsif string[beginning..-1] == string[beginning..-1].reverse
      pal = string[beginning..-1]
    else
      ending -= 1
      beginning += 1
    end
  end
  return pal
end

p largest_palindrome("racecar") # racecar
p largest_palindrome("racecars") # racecar
p largest_palindrome("coffee") # ff
p largest_palindrome("eat") # e
p largest_palindrome("rabbit") # bb
p largest_palindrome("eebit")
p largest_palindrome("bitee")

# Take a string, break it up into individual letters
# Work through the letters, check for a palindrome, if yes, maybe set a local variable for it
# Continuing through, if another planindrome comes up, if the size is greater thatn the current palindrome, reset the variable
# return that variable being the palindrome
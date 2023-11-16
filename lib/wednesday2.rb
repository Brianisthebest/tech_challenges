# Using a language of your choice -> write a program that accepts a string and returns true if ANY of the words have duplicate letters.
# What is we wanted to return a number of how many words contain duplicate letters?

def duplicate_letters?(string)
  array = string.split(' ')
  counter = 0
  array.each_with_index do |word, i|
    letters = word.split('')
    letters.each_with_index do |letter, ind|
      if letters[ind + 1 .. -1].include?(letter)
        counter += 1
      end
    end
  end
  if counter >= 1
    true
  else 
    false
  end
end

#  Write a method that's going to take in a string
# Look at the string, seperate it by space to look at each ind word
# We want to look at each word and see if any letters are the same in those words, if so, return true

p duplicate_letters?('geese goose') # return true
p duplicate_letters?('go to') # return false
p duplicate_letters?('go  too') #return true
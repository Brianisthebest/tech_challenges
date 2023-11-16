# def roman_to_int(s)
#   values = {
#       "I": 1,
#       "V": 5,
#       "X": 10,
#       "L": 50,
#       "C": 100,
#       "D": 500,
#       "M": 1000
#   }

#   total = 0
#   array = s.split('')
#   array.each_with_index do |num, i|
#     if (i + 1 < array.length) && values[array[i + 1]] != nil && values[num.to_sym] < values[array[i + 1].to_sym]
#         total -= values[num.to_sym]
#     else
#         total += values[num.to_sym]
#     end
#   end
#   total
# end

def roman_to_int(s)
  # Intake a hash that has the translated roman numeral values
  translations = {
      'I' => 1,
      'V' => 5,
      'X' => 10,
      'L' => 50,
      'C' => 100,
      'D' => 500,
      'M' => 1000
  }

  # Set an initial value to = 0
  translated_value = 0

  # Translate the values we want to replace
  ## Replace `CM`, `IV`, `XC` in third example
  s.replace(s.gsub('CM', 'DCCCC')).replace(s.gsub('XC', 'LXXXX')).replace(s.gsub('IV', 'IIII')
)
  # Do a `.each` loop for every letter in the string and compare them to the translated values and add them to the number
  s.each_char do |char|
      translated_value += translations[char]
  end
  
  # return the number
  translated_value
end

# M DCCCC LXXXX IIII
p roman_to_int('IX')
p roman_to_int("LVIII")


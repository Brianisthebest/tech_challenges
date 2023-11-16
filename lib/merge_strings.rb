def merge_alternately(word1, word2)
  array1 = word1.split('')
  array2 = word2.split('')
  if array1.size == array2.size
    combined = array1.zip(array2)
  else
    combined = array1.zip(array2)
    combined << array2[array2.size - array1.size..-1]
  end
  combined.flatten.join('').delete(' ')
end
word1 = "abc" 
word2 = "pqr"
p merge_alternately(word1, word2)
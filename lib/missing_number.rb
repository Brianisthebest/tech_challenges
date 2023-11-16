def missing_number(numbers)
  sorted = numbers.sort

  return 0 unless sorted[0] == 0

  sorted.each_with_index do |num, i|
    return sorted[i] + 1 unless sorted[i + 1] == sorted[i] + 1
  end
end

p missing_number([3, 0, 1])
p missing_number([0, 1])
p missing_number([9,6,4,2,3,5,7,0,1])
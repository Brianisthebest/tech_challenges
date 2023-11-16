def gcd_of_strings(str1, str2)

  length_1 = str1.length
  length_2 = str2.length

  if str2 == ""
    return ""
  elsif length_1 % length_2 == 0 && str1.start_with?(str2) && str1.end_with?(str2)
    return str2[0..-1]
  else
    gcd_of_strings(str1, str2[0..-2])
  end
end

puts gcd_of_strings("ABCABC", "ABC")

puts gcd_of_strings("ABABAB", "ABAB")

puts gcd_of_strings("LEET", "CODE")
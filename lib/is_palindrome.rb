def is_palindrome(x)
  str = x.to_s
  return false if str[0] != str[-1]
  return true if str.length == 0 || 1
  if str[0] == str[-1]
      is_palindrome(str[1..-2])
  else
      return false
  end
end

p is_palindrome(1000021)
def str_str(haystack, needle)
  start = 0
  ending = needle.size
  ending -= 1

  if haystack.size >= needle.size
    until ending == haystack.size
      if haystack[start..ending] == needle
        return start
      else
        start += 1
        ending += 1 
      end
    end
  end
  -1
end


p str_str("sadbutsad", "sad") # 0
p str_str("leetcode", "leeto") # -1
p str_str("sadman", "man") # 3
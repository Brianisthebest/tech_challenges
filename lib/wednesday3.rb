# Using a language of your choice -> write a program that takes in cardinal directions and tells you if you made it back to your original point.
#  [’N’, ’S’, ‘E’, ‘W’] returns true. Each cardinal direction moves you that direction by one point.

def mover(directions)
  n = 0
  s = 0
  e = 0
  w = 0

  directions.each do |dir|
    if dir.upcase == 'N'
      n += 1
    elsif dir.upcase == 'W'
      w += 1
    elsif dir.upcase == 'S'
      s += 1
    elsif dir.upcase == 'E'
      e += 1
    end
  end

  if n == s && e == w
    return true
  else
    return false
  end

  # directions.map { |dir| dir.upcase! }

  # if directions.count('N') == directions.count('S') && directions.count('E') == directions.count('W')
  #   return true
  # else
  #   return false
  # end
end


puts mover(["N", "S", "E", "W"]) # true
puts mover(["n", "S", "E", "W"]) # true
puts mover(["W"])  # false
puts mover(["W", "S"])  # false


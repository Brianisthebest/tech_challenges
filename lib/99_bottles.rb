def sing_song
  bottles = 99
  while bottles != 0
    p "#{bottles} of beer on the wall, #{bottles} bottles of beer."
    bottles -= 1
    p "You take one down, pass it around, #{bottles} of beer on the wall"
  end
  p "No more bottles of beer on the wall, no more bottles of beer"
  "Go to the store and buy some more, 99 bottles of beer on the wall"
end

p sing_song
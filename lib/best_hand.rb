def best_hand(ranks, suits)
  if suits.uniq.length == 1
      'Flush'
  elsif ranks.uniq.length == 3 || ranks.uniq.length == 2
      'Three of a Kind'
  else
      'Pair'
  end
end

ranks = [10,10,2,12,9]
suits = ['a','b','c','a','d']
best_hand(ranks, suits)
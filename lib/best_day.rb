def max_profit(prices)
#  min = prices.min
#  max = 0
#  min_index = prices.find_index(prices.min)

#  prices[min_index..-1].each do |price|
#     if price > max
#       max = price
#     end
#   end
#   max - min

min = prices[0]
max = 0
prices.each do |price|
  min = price if price < min
  temp = price - min
  max = price if temp > max
end

puts max_profit([7,1,5,3,6,4])
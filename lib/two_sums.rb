# def two_sum(nums, target)
# elements = []
#   nums.each_with_index do |num, ind|  
#     nums.each_with_index do |num2, ind2|
#       if num + num2 == target && ind != ind2
#         elements << ind
#       end
#     end
#   end
#   elements
# end
def two_sum(nums, target)
    hash = {}
        nums.each_with_index do |number, index|
        if hash[target - number]
            return [hash[target - number], index]
        else
            hash[number] = index
        end
    end
end

p two_sum([2,7,11,15], 9)
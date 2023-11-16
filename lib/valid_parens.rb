def is_valid(s)
    array = s.split('')
    array.each_with_index do |sing, ind|
      require 'pry'; binding.pry
        if "#{sing}#{array[ind+1]}" == '()' || '{}' || '[]'
            return true
        else
            return false
        end
    end
end

# puts is_valid('()')
# puts is_valid('()[]{}')
puts is_valid('(]')

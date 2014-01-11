#check if an array has a specific word and replace that word with symbols, accounting for nil and empty values
def line_types(lines)
  
new_array = [:unknown]*lines.length
  
lines.each_with_index { |x, index| 
       unless x.nil?
         new_array[index] = :alpha if x.downcase.include?("alpha")
        new_array[index] = :beta if x.downcase.include?("beta")
    end
}
return new_array
end

puts line_types (["I'm Alpha", "No idea", "beta tester", nil])

#extend array class to check if one array contains all of the values of another

class Array
def contains_all?(other_array)
other_array.index{|x| !self.include?(x)}.nil?
end
end

items = [1,2,3,4,5,6,7,8,9]
#should assert true
puts items.contains_all?([1,2,3])
#should assesrt false
puts items.contains_all?([1,2,17])
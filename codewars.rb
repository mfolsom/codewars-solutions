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

line_types (["I'm Alpha", "No idea", "beta tester", nil])

#extend array class to check if one array contains all of the values of another

class Array
def contains_all?(other_array)
other_array.index{|x| !self.include?(x)}.nil?
end
end

items = [1,2,3,4,5,6,7,8,9]
#should assert true
items.contains_all?([1,2,3])
#should assesrt false
items.contains_all?([1,2,17])


#check if all the values matching the specific sex are greater than the value provided

data =  [ 
  {age: 40, sex: :m},
  {age: 24, sex: :f},
  {age: 56, sex: :m},
  {age: 45, sex: :m},
  {age: 23, sex: :f}
]

def check_ages?(data, sex, age_is_greater_than)
    data.all?{|d| d[:sex] != sex || d[:age] >  age_is_greater_than}
end
#should return true
check_ages?(data, :f, 18)

#should return false
check_ages?(data, :f, 25)

#should return true
check_ages?(data, :m, 18)

#should return false
check_ages?(data, :m, 44)


#parse dates with all formats
require 'date.rb'



    def parse_with_us_format(date, *args)
    date =~ %r{^\d+/\d+/(\d+)$}
     Date.strptime date, "%m/%d/#{args.first == false ? '%Y' : '%y'}"
  
    end
def parse_without_us_format(date,*args)
  date = date.gsub(' ','-')
  d = Date.parse(date)
  d.strftime("%A")
end

  date = "12-25-2013"
#puts parse_with_us_format(date, "%A")

def domain_name(uri)
  Addressable::URI.heuristic_parse(uri, :scheme => "http") \
    .host[/\w+\.\w+(\.\w{2})?\Z/]
end

domain_name("http://www.meganfolsom.com/anything/")



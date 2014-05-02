require 'pry'

numbers = "1, 1, 1, 2, 2, 3, 3, 4, 4"

def arrayify
  arrayify = []
  a = list.split(', ',)
  a.each do |i| 
  arrayify << i.to_i
end

def uniques(list)

	#this should be defined in new method
	arrayify = []
  a = list.split(', ',)
  a.each do |i| 
  	arrayify << i.to_i
  end

  #builds a counter using a hash where k = item and v = frequency
  non_dups = []
  counter = Hash.new(0)
  arrayify.each { |v| counter[v] += 1 }

  #creates an array of unique values
  #iterates and selects each item (k) and pushes into new array
  counter.select { |k,v| non_dups << k }
  non_dups

end


p uniques(numbers)
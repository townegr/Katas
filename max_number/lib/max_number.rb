numbers = [12, 2, 33, 24, 15]
max = numbers[0]

#assigning largest value to max variable through iteration
numbers.each do |n|
  if n >= max
    max = n
  end
end

p max

#using inject method to compare elements in array
p max = numbers.inject{ |max, n| n > max ? n : max }


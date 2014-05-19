def bottles_of_beer(n)
  if n == 0
    puts "no more bottles of beer on the wall"
  else
    puts "#{n} bottles of beer on the wall"
    puts "Take one down, pass it around."
    bottles_of_beer(n-1)
  end
end

bottles_of_beer(10)

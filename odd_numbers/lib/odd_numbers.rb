def odd_number
  list = (1..100)
  odds = []
  list.each do |num|
    if num % 2 != 0
      odds << num
    end
  end
  puts odds
end

odd_number

#Below include other approaches of reaching same solution

# puts (1..50).step(4).to_a
# puts (1..100).select(&:odd?)

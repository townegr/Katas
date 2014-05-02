def leap_year?(year)
  if year % 400 == 0
    puts true
  elsif year % 100 == 0
    puts false
  elsif year % 4 == 0
    puts true
  else
    puts false
  end
end

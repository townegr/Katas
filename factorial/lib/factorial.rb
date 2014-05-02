def factorial(n)
  #Using Ruby's inject method
  (1..n).inject{ |product, num| product * num }
end

def factorial(n)
  #Using recursion
  if n == 0
    1
  else
    n * factorial(n-1)
  end
end

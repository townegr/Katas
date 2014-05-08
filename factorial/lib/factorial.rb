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

#cached fibonacci
cache = Hash.new

def fib_cache(n)
     if t = cache[n]
          return t
     end
     if n <=1
     return n
     else
     result = fib_cache(n-1) + fib_cache(n-2)
     end
     cache[n] = result
end

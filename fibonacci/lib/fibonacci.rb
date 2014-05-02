# def fib(n)
#   if n <= 2
#     puts 1
#   else
#     fib(n-1) + fib(n-2)
#   end
# end

# fib(5)

def fibonacci(n)
  return n if n <= 1
  fibonacci(n-1) + fibonacci(n-2)
end

puts fibonacci(15)

# fibonacci
# fib(0) = 1
# fib(1) = 1
# fib(2) = 2
# fib(3) = 3
# fib(4) = 5
# fib(5) = 8
# fib(6) = 13
# fib(7) = 21
# fib(8) = 34

# iterative
def fibonacci(n)
  answer = 0
  (1..n).each do |i|
    answer += i
  end
end

puts fibonacci(8)

# recursive
#def fibonacci(n)
#end 



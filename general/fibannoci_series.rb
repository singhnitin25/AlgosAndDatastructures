# Fibonacci Number
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55.....

# Brute Force Method
# Time Complexity = exponential (2^n)
# Space Complexity = O(n)
def fib(n)
  if(n == 1 || n == 2)
    return 1
  else
    fib(n-1) + fib(n-2)
  end
end

for i in 1..80
  puts "i = #{i} fib(#{i})=#{fib(i)}"
end

# Dynamic Programming approach
# Memoize the result of already calculated values
@result = {}
def fib(n)
  return n if n == 0

  if n == 1 || n == 2
    return 1
  else
    if @result[n]
      return @result[n]
    else
      @result[n] = fib(n-1) + fib(n-2)
      return @result[n]
    end
  end
end
puts fib(9)

for i in 1..80
  puts "i = #{i} fib(#{i})=#{fib(i)}"
end
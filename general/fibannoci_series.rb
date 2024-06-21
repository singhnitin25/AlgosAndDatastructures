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
# 1. Top Down Approach - Harder ----> Easier
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
for i in 1..80
  puts "i = #{i} fib(#{i})=#{fib(i)}"
end

# DP approach 2
# 2. Bottom Up approach => Easier ---> Harder
# Let's say if we want to calculate fib(7) then we have to calculate fib(7) to fib(1)
# So why can't we start fib(1) and go to fib(7)
@result = { 1 => 1, 2 => 1 }
def fib(n)
  for i in 3..n
    @result[i] = @result[i-1] + @result[i-2]
  end
  @result
end
for i in 1..80
  fib(i)
  puts "i = #{i} fib(#{i})=#{@result[i]}"
end

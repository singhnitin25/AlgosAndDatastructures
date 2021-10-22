# TC - O(n)
# Space Complexity: Since recursive algorithms uses stack space to store
# returned functiona. Space complexity = depth of recursion = O(n)
def factorial_using_recursive_approach(n)
  output = (n == 1 || n == 0) ? 1 : n * factorial_using_recursive_approach(n - 1)
end

# 5! = 5 x 4 x 3 x 2 x 1
# 5 * 1 = 5
# 5 * 4 = 20
# 20 * 3 = 60
# 60 * 2 = 120
# 120 * 1 = 120
def factorial_using_iterative_approach(n)
  result = 1
  if n == 1 || n == 0
    result
  else
    (1..n).each do |num|
      result = result * num
    end
  end
  puts "Factorial of given number #{n} is #{result}"
end
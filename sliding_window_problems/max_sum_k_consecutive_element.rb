# Problem Statement: Given an array of Integer and integer K.Find the max sum that is possible for k consecutive element.
# For example: array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] and k = 5
# = max(1+2+3+4+5, 2+3+4+5+6, 3+4+5+6+7, 4+5+6+7+8, 5+6+7+8+9, 6+7+8+9+10)
# = max(15, 20, 25, 30, 35, 40) = 40

# Brute Force Approach : Time Complexity : O(n^2)

# Time complexity = O(n*k) if k == n it becomes O(n^2)
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
k = 5
output_array = []
array.each_with_index do |element, index|  # n times
  break unless array[index + k-1]

  sum = 0
  (index...index + k).each do |j| # k times
    break unless array[j]

    sum = sum + array[j]
  end
  output_array << sum
end
puts output_array.max

# Approach 2 : Optimal Solution

# Time complexity: O(n+k)

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
k = 5
window_sum = 0
(0...k).each do |i|
  window_sum = window_sum + array[i]
end
max_sum = window_sum
(k...array.size).each do |index|
  window_sum = window_sum + array[index] - array[index - k]
  max_sum = [window_sum, max_sum].max
end
puts "Max Sum is = #{max_sum}"

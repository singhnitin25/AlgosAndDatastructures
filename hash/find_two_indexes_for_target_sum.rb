# Question: Given a Array : [3, 3, 2, 4, 7, 5, 8], Traget is to find two indexes i & j such that
# A[i] + A[j] = Target number. Let's say Traget = 9

# 1. Brute Force Solution implementation:
# Analysis:
# Time complexity : n * (n - i) = O(n^2)
target = 9
input_array = [3,3,2,4,7,5,8]
indexes_found = false
input_array.each_with_index do |value, i| # This loop will run n times
  (1...input_array.size).each do |j| # This loop will run n - i times
    if target == (value + input_array[j])
      indexes_found = true
      puts "Pair found at indexes #{i} and #{j}"
      break
    end
  end
  break if indexes_found
end

# 2. Optimal Solution: Using Hash Table

input_array = [3,3,2,4,7,5,8]
visited_data = {}
target = 9
input_array.each_with_index do |value, i|
  second_value = target - value
  if visited_data.has_value? second_value
    puts "Pair found at indexes #{visited_data.key(second_value)} and #{i}"
  end
  visited_data.merge!(i => value)
end



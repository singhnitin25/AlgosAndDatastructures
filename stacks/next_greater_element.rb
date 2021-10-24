# Problem Statement: Given an input array find the next immediate greater number or index for particular number.
# input_array = [2, 1, 7, 4, 3, 9]

# Solution 1 - Brute force algorithm

input_array = [2, 1, 7, 4, 3, 9]
size = input_array.size
output_array = [-1]*size
input_array.each_with_index do |value, index|
  (index+1...input_array.size).each do |j|
    if input_array[j] > value
      output_array[index] = input_array[j]
      break
    end
  end
end
output_array


# Solution 2 - Optimal Solution - Using Stack

input_array = [2, 1, 7, 4, 3, 9]
size = input_array.length
output_array = [-1]*size
stack = []
input_array.each_with_index do |value, index|
  while stack.size > 0 && value > stack.last.values.first
    output_array[stack.last.keys.first] = value
    stack.pop
  end
  stack.push({ index => value })
end

if stack.size > 0
  puts "NGE not found for elements #{stack.values}" # [{5=>9}]
end

input_array
output_array # [7, 7, 9, 9, 9, -1]

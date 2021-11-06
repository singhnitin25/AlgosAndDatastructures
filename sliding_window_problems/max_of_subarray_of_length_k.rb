# Problem Statement:
# Find and print the max of all the subarray of length k.
# For Example: array = [1, 2, 3, 1, 4, 5, 2, 3, 6]
# Output = 3,3,4,5,5,5,6

# Approach 1 - Brute force - O(n^2)

array = [1, 2, 3, 1, 4, 5, 2, 3, 6]
k = 3
sub_array = []
for i in (0...k)
  sub_array << array[i]
end

puts sub_array.max
for i in (k...array.size)
  sub_array << array[i]
  sub_array.shift
  puts sub_array.max
end

# Approach 2  - Optimal

array = [1, 2, 3, 1, 4, 5, 2, 3, 6]
k = 3
sub_array = []
for i in (0...k)
  while sub_array.count >= 1 && sub_array.first && array[i] >= array[sub_array.last]
    sub_array.pop
  end
  sub_array.append(i)
end
for i in (k...array.size)
  puts array[sub_array.first]
  while sub_array.count >= 1 && sub_array[0] && sub_array[0] <= i-k
    sub_array.shift
  end
  while sub_array.count >= 1 && sub_array.last && array[i] >= array[sub_array.last]
    sub_array.pop
  end
  sub_array.append(i)
end
puts array[sub_array.first]
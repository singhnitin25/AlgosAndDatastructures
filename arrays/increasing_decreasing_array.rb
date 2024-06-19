# Check if an array is increasing or decreasing
# 1. Increasing array: The first two and the last two elements must be in increasing order.
# 2. Decreasing array: The first two and the last two elements must be in decreasing order.
# 3. Increasing then decreasing array: The first two elements must be in increasing order and the last two elements must be in decreasing order.
# 4. Decreasing then increasing array: The first two elements must be in decreasing order and the last two elements must be in increasing order.


def check_array_type(array)
  length = array.length

  if (array[0] <= array[1]) && (array[length-2] <= array[length-1])
    puts "Increase Array"
  elsif (array[0] >= array[1]) && (array[length-2] >= array[length-1])
    puts "Decreasing Array"
  elsif (array[0] <= array[1]) && (array[length-2] >= array[length-1])
    puts "Increasing then descreasing array"
  elsif (array[0] >= array[1]) && (array[length-2] <= array[length-1])
    puts "Decreasing then increasing Array"
  end
end
check_array_type [1, 2, 3, 2, 1]
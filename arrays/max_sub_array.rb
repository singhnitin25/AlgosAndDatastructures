# Kadane's Algorithm
# Given an array arr of N integers. Find the contiguous sub-array with maximum sum & return its sum.
# https://medium.com/@rsinghal757/kadanes-algorithm-dynamic-programming-how-and-why-does-it-work-3fd8849ed73d

def max_sub_array(nums)
  local_max = 0;
  global_max = -Float::INFINITY

  for i in 0..nums.length - 1
    local_max = [nums[i], nums[i] + local_max].max
    if local_max > global_max
      global_max = local_max
    end
  end
  return global_max
end


# [-2, 1, -3, 4, -1, 2, 1, -5, 4]
def max_sub_array(array)
  current_max = array[0]
  global_max = array[0]

  array.each_index do |index|
    break if array[index+1].nil?

    current_max = [array[index+1], current_max + array[index+1]].max
    if current_max > global_max
      global_max = current_max
    end
  end
  puts global_max
end
max_sub_array([2, -1, 2, 3, 4, -5, 6, -7, 8, -9, 10])
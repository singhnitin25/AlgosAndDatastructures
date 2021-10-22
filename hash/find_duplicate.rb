# Given an array of n integers, print the number of times a numbber occurred in that array.
# For example:
# input_array = [2, 3, 5, 3, 7, 8, 4, 8]
# output = { 2: 1, 3: 2, 5: 1, 7: 1, 8: 2, 4: 1}

def find_duplicate(array)
  result = {}
  array.each do |element|
    result[element] = result[element] ? (result[element]  + 1) : 1
  end
  puts result
end
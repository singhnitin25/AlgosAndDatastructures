#https://www.geeksforgeeks.org/write-a-program-to-reverse-an-array-or-string/

def reverse_array(array)
  length = array.length
  for i in 0...(length/2.0).ceil
    temp = array[i]
    array[i] = array[length-1-i]
    array[length-1-i] = temp
  end
  print array
end

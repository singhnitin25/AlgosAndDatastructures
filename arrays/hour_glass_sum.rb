# Problem Statement :-
# Given a 6 X 6 2D Array as :-
# arr = [
#   [1, 1, 1, 0, 0, 0],
#   [0, 1, 0, 0, 0, 0],
#   [1, 1, 1, 0, 0, 0],
#   [0, 0, 2, 4, 4, 0],
#   [0, 0, 0, 2, 0, 0],
#   [0, 0, 1, 2, 4, 0],
# ]

# We define an hourglass in A to be a subset of values with indices falling in this pattern in arr's graphical representation:
# a b c
#   d
# e f g

# hourglass sum is the sum of an hourglass' values

# for more details visit hackerrank problem => https://www.hackerrank.com/challenges/2d-array/problem

def hour_glass_sum(arr)
  max_sum = -63 # min possible value -9 * 7
  arr.each_index do |i|
    break if i == 4
    row = arr[i]
    row.each_index do |j|
      next if j == 5

      # Sum of top 3 element
      top = arr[i][j..j+2].sum

      # Sum of mid element
      mid = arr[i+1][j+1]

      # Sum of bottom 3 element
      bottom = arr[i+2][j..j+2].sum

      hour_glass = top + mid + bottom

      if hour_glass > max_sum
        max_sum = hour_glass
      end

    end
  end
  return max_sum
end
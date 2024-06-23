# LeetCode = Climbing Stairs

def climb_stairs(n)
  @result = {}
  no_of_ways_from(0, n)
end

def no_of_ways_from(i, n)
  return 1 if i == n
  return 0 if i > n

  if @result[i]
    return @result[i]
  else
    @result[i] = no_of_ways_from(i+1, n) + no_of_ways_from(i+2, n)
    return @result[i] 
  end
end

puts climb_stairs(5)
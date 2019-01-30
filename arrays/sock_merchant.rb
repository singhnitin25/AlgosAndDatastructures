# John works at a clothing store. He has a large pile of socks that he must pair by color for sale. Given an array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.
# For example, there are n = 7 socks with colors ar = [1, 2, 1, 2, 1, 3, 2]. There is one pair of color 1 and one of color 2. There are three odd socks left, one of each color. The number of pairs is 2.
def sock_merchant(ar)
  number_of_socks = {}
  ar.each do |a|
    if number_of_socks.has_key?(a)
      number_of_socks.merge!(a => number_of_socks[a] + 1)
    else
      number_of_socks.merge!(a => 1)
    end
  end
  number_of_socks.each do |key, value|
    number_of_socks.merge!(key => value / 2)
  end
  number_of_socks.values.reduce :+
end
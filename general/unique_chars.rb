# Problem Statment - Give a count of all unique characters from the string without using switch-case

# Solution 1: Using Array
def unique_chars(string)
  unique_chars = []
  string.downcase.each_char do |char|
    unique_chars.include?(char) ? unique_chars : unique_chars << char
  end
  puts "Unique char count are #{unique_chars.count}"
end

# Solution 2: Using Set

def unique_chars(string)
  unique_chars = Set.new
  string.downcase.each_char do |char|
    unique_chars.add(char)
  end
  puts "Unique char count are #{unique_chars.count}"
end


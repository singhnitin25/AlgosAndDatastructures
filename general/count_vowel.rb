# Count no of vowel in given string
# Input : abc de
# Output : 2

# Input : geeksforgeeks portal
# Output : 7


def count_vowel(string)
  vowels = ['a', 'e', 'i', 'o', 'u']
  vowel_count = 0
  string.downcase.each_char do |char|
    vowel_count = vowels.include?(char) ? vowel_count + 1 : vowel_count
  end
  puts "Total numbers of vowels present in above string is #{vowel_count}"
end

# Variation of above problem

# Now return the count of each vowel present in given string

# For example:
# Input String : 'abc dee'
# Output: Vowel a present 1 times, e present twice

def count_vowel(string)
  vowels = ['a', 'e', 'i', 'o', 'u']
  each_vowel_count = {}
  string.downcase.each_char do |char|
    vowels.include?(char) ? each_vowel_count[char] = (each_vowel_count[char] || 0) + 1 : each_vowel_count
  end
  each_vowel_count.each do |key, value|
    puts "Vowel #{key} count = #{value}"
  end
end
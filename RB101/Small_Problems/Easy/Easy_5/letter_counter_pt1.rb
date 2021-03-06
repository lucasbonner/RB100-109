#write method takes a string with one or more space
#seperated words and returns a hash that shows
#the number of words of diff. sizes

#words consist of any string of character that do NOT
#include a space

def word_sizes(words_string)
 counts = Hash.new(0)
 words_string.split.each do |word|
  counts[word.size] += 1
 end
 counts
end

# Examples:
puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
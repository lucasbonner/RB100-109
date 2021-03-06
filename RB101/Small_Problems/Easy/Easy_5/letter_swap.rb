#write a method that takes string of words and returns a string
#in which the first and last letters of every word are swapped

#may assume every word contains at least one letter
#and string will always contain at least one word
#may also assume each string contains nothing but words and spaces

# def swap(string)

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end



# Examples:
puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'

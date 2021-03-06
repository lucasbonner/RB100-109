# Given this data structure write some code to return
# an array containing the colors of the fruits and
# the sizes of the vegetables. The sizes should be
# uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

#return value should look like this:
# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

arr = []
hsh.each do |key, value|
  arr<<value[:size].upcase! if value[:type] == 'vegetable'
   value[:colors].each do |x|
    x.capitalize!
  end
  arr<<value[:colors] if value[:type] == 'fruit'
end

p arr

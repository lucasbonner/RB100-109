#Reverse an array without using the built-in reverse method.




def reverse_array(arr)
  result = []
  index = (arr.length - 1)

  loop do
    break if index < 0
    result << arr[index]
    index -= 1
  end
  result
end

def reverse_array!(arr)

end



p reverse_array([1, 2, 3, 4]) == [4, 3, 2, 1]
p reverse_array([1, 2, 3, 4, 5]) == [5, 4, 3, 2, 1]
p reverse_array!([1, 2, 3, 4, 5]) #== [5, 4, 3, 2, 1] # mutating - just for fun
p reverse_array!([1, 2, 3, 4]) #== [4, 3, 2, 1] # mutating - just for fun

def bubble_sort_by(array)
  array.each do |element|
    array.each_with_index do |element, index|
      if index > 0 && yield(array[index-1], element) > 0
          array[index-1], array[index] = element, array[index-1]
      end
    end
  end
  return array
end
# I wanted to prove if yield works into a condition, just for reduce lines
# it works!
my_array = ["goingto", "hello", "hey", "hi"]
bubble_sort_by(my_array) do |left, right|
   left.length - right.length
end

p my_array
#p == puts.. good! 
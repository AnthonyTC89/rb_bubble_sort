def bubble_sort(array)
    
    len = array.length
    (len-1).times do |j|
        (len-j-1).times do |i|

            if array[i] > array[i+1]
                aux_int = array[i]
                array[i] = array[i+1]
                array[i+1] = aux_int
            end
        end
    end
    return array
end

array = [5,4,3,2,1]

result = bubble_sort(array)

puts result
def stock_picker(array)    
    min_index = 0
    min_value = array[min_index]
    max_index = 0
    max_value = array[max_index]

    sum = 0
    final_min = 0
    final_max = 0

    array.each_with_index do |v,i|

        if(v < min_value)
            min_index = i
            min_value = array[i]
            max_index = i
            max_value = array[i]
        end
        if(v > min_value && v > max_value)
            max_index = i
            max_value = array[i]
        end
        if((max_value - min_value) > sum)
            sum = max_value - min_value
            final_min = min_index
            final_max = max_index
        end

    end
    final = [final_min,final_max]
end    



a = [17,3,6,9,15,8,6,1,10]
p stock_picker(a)
# => [1,4]  # for a profit of $15 - $3 == $12
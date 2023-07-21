def my_uniq(arr)
    unique_ele = {}
    arr.each do |ele|
        unique_ele[ele] = true 
    end

    unique_ele.keys
end


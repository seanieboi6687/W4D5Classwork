class Array
    def my_uniq
        unique_ele = {}
        self.each do |ele|
            unique_ele[ele] = true 
        end

        unique_ele.keys
    end

    def two_sum 
        new_arr = []
        self.each_with_index do |num1, idx1|
            self.each_with_index do |num2, idx2|
                if num1 + num2 == 0 && idx2 > idx1
                    new_arr << [idx1, idx2]
                end
            end
        end

        new_arr
    end
end






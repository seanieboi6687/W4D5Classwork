class Array
    def my_uniq
        unique_ele = {}
        self.each do |ele|
            unique_ele[ele] = true 
        end

        unique_ele.keys
    end
end


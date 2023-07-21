require "TDD.rb"

describe "my_uniq" do
    it "should return a new array with unique elements" do
        arr_1 = [1, 2, 1, 3, 3]
        counter = Hash.new(0)
        arr_1.my_uniq.each { |ele| counter[ele] += 1}
        expect(counter.all? { |k, v| v == 1}).to eq(true)
    end

    it "should return a new array with unqiue elements in the order in which they first appeared" do
        arr_1 = [1, 2, 1, 3, 3]
        expect(arr_1.my_uniq).to eq([1, 2, 3])
    end
    
end

describe "two_sum" do 
    it "should return pairs of indices that are sorted with smaller index before the biggest index" do 
        arr_1 = [-1, 0, 2, -2, 1] 
        expect(arr_1.two_sum.all? { |subarr| subarr[0] < subarr[1]}).to eq(true)
    end

    it "should find all pairs of positions where the elements at those positions sum to zero." do
        arr_1 = [-1, 0, 2, -2, 1] 
        expect(arr_1.two_sum).to eq([[0, 4], [2, 3]])
    end
end

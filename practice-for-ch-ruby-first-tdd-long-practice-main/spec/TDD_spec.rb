require "/Users/sean/Desktop/App Academy/W4/D5/Classwork/practice-for-ch-ruby-first-tdd-long-practice-main/lib/TDD.rb"

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
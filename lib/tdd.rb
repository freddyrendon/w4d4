class Array
    def my_uniq
        hash = Hash.new(0)
        self.each { |num| hash[num] += 1 }
        hash.keys
    end

    def two_sum
        hash = Hash.new { |h, k| h[k] = [] }
        self.each_with_index do |ele, idx|
            if hash.has_key?(0 - ele)
                hash[0 - ele] << idx
            else
                hash[ele] << idx
            end
        end
        hash.values.select { |value| value.length == 2 }
     end

     def my_transpose
        arr = []
        i = 0
        while i < self.length
            current = []
            (0...self.length).each do |j|
                current<< self[j][i]
            end
            arr << current
            i += 1
        end
        arr
     end

     def Stock_picker
        hash = Hash.new { |h,k| h[k] = []}

        self.each_with_index do |num1, idx1|
            self.each_with_index do |num2, idx2|
                if idx2 > idx1 && num2 > num1
                    hash[num2 - num1] = [idx1,idx2]
                end
            end 
        end 
        new_hash = hash.sort_by { |keys, values| keys }
        new_hash[-1][1]

     end 
end

class Hanoi
    attr_accessor :arr1, :arr2, :arr3
    def initialize(num)
        raise ArgumentError if !num.is_a? Integer
        @arr1 = []
        @arr2 = []
        @arr3 = []
        populate(num)
    end

    def populate(num)
        arr = (0...num).to_a.shuffle
        arr.each_with_index do |num, idx|
            if idx % 2 == 0
                @arr1 << num
            elsif idx % 3 == 0 
                @arr2 << num 
            else 
                @arr3 << num 
            end 
        end  
              
    end
end
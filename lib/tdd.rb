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

prices = [7, 1, 5, 3, 6, 4]
p prices.Stock_picker
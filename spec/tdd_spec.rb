require 'tdd'
require 'rspec'

describe Array do
    describe '#my_uniq' do
        it "returns an array with no duplicate elements" do
            expect([1,2,1,3,3].my_uniq).to eq([1,2,3])
        end
    end

    describe '#two_sum' do
        it "return an array of subarrays where the elements are indicies that sum up to zero" do
            expect([-1, 0, 2, -2, 1].two_sum).to eq([[0,4], [2,3]])
        end
        it "returns subarrays, where indices are sorted" do
            arr = [-1, 0, 2, -2, 1].two_sum
            expect(arr[0][0] <= arr[0][1]).to be(true)
        end
        it "return subarrays that are sorted" do
            arr = [-1, 0, 2, -2, 1].two_sum
            expect(arr[0][0] <= arr[1][0]).to be(true)
        end
    end

    describe '#my_transpose' do
        context "takes in matrix, or 2D grid of numbers" do
            it "transpose the matrix" do
                rows = [[0,1,2],[3,4,5],[6,7,8]]
                rows = rows.my_transpose
                cols = [[0,3,6],[1,4,7],[2,5,8]]
                expect(rows[0] == cols[0]).to be(true)
                expect(rows[1] == cols[1]).to be(true)
                expect(rows[2] == cols[2]).to be(true)
            end
        end
    end

    describe "#Stock_picker" do 
        context "Takes in an array of stocks prices." do 
            it "It return the moost profitable pair of days" do
                prices = [7, 1, 5, 3, 6, 4] 
                expect(prices.Stock_picker).to eq([1,4])
            end 
            it "return an array that sorted" do 
                expect(prices.Stock_picker[0] < prices.Stock_picker[1]).to be(true)
             end
        end 
    end

end
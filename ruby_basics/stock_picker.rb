
def stock_picker(arr)

    current_profit = arr[0] - arr[1] # intialize profit
    result = [] # array to get the index for the most profitable buy and sell values

    arr.map.with_index do |value, index|
        arr.map.with_index do |v, i|
            next_profit = value - v
            if next_profit < current_profit && index < i
                current_profit = next_profit
                result = [index, i]
            end
        end
    end
    result
end

p stock_picker([17,3,6,9,15,8,6,1,10])
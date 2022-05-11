test_arr = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(arr)
  max_profit = 0
  best_days = []

  arr.each_with_index do |element, index|
    buy = element
    index += index + 1

    while index < arr.length
      sell = arr[index]
      profit = sell - buy

      if profit > max_profit
        max_profit = profit
        best_days = [arr.index(element), index]
      end

      index += 1
    end
  end

  puts "Days #{best_days} provide a profit of #{max_profit}"
end

stock_picker(test_arr)

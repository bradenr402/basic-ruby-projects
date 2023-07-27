def stock_picker(array)
  best_profit = 0
  best_days = []

  array.each_with_index do |element1, index1|
    array.each_with_index do |element2, index2|
      profit = element2 - element1

      if profit > best_profit && index1 < index2
        best_profit = profit
        best_days = [index1, index2]
      end
    end
  end
  puts "Buy: day ##{best_days[0]}, cost: $#{array[best_days[0]]}."
  puts "Sell: day ##{best_days[1]}, cost: $#{array[best_days[1]]}."
  puts "Profit: $#{best_profit}."
end

stock_picker([17,3,6,9,15,8,6,1,10])
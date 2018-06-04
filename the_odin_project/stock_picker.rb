=begin
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

> stock_picker([17,3,6,9,15,8,6,1,10])
=> [1,4]  # for a profit of $15 - $3 == $12

=end

def stock_picker(array)
  best = array.max
  profit = 0
  buy = 0
  sell = 0

  number = array.length - 1

  (0..number).each { |i|
      if (array[i] < best)
        buy = array[i]
        (i..number).each { |j|
          if (array[j] - buy > profit)
            profit = array[j] - buy
            buy = array[i]
            sell = array[j]
          end
        }
      end
  }

  puts "Buy: " + buy.to_s + ", Sell: " + sell.to_s + ", Profit: " + profit.to_s 
end

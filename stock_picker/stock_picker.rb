#i! /usr/bin/env ruby

# TASK:
# Implement a method #stock_picker that takes in an array of stock prices,
# one for each hypothetical day. It should return a pair of days
# representing the best day to buy and the best day to sell.
# Days start at 0.

def stock_picker(prices)
  result = []
  best_cell_day = prices.length - 1
  best_deal = 0
  day_index = prices.length - 1

  while day_index >= 0
    price = prices[day_index]
    deal = prices[best_cell_day] - price

    if deal >= best_deal
      result = [day_index, best_cell_day]
    end

    if price > prices[best_cell_day]
      best_cell_day = day_index
    end

    day_index -= 1
  end
  result
end


p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# => [1,4]  # for a profit of $15 - $3 == $12

p stock_picker([1, 2, 3, 4, 5, 6, 7])

p stock_picker([8, 7, 6, 5, 4, 3])

p stock_picker([])
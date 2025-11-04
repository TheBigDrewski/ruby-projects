# frozen_string_literal: true

# Takes an array of stock prices each day and returns the best day to buy and sell for maximum profit
def stock_picker(prices)
  buy_index = 0
  sell_index = 0
  max_profit = 0
  solution = []

  prices.each_index do |index|
    buy_index = index
    # Set the sell_index to the max value in the subset of the array
    sell_index = prices.index(prices[index..].max)
    if (prices[sell_index] - prices[buy_index]) > max_profit
      max_profit = prices[sell_index] - prices[buy_index]
      solution = [buy_index, sell_index]
    end
  end
  solution
end

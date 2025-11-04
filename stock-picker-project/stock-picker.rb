# Takes an array of stock prices each day and returns the best day to buy and sell for maximum profit
def stock_picker(prices)
    buyIndex = 0
    sellIndex = 0
    maxProfit = 0
    solution = []

    prices.each_index do |index|
        buyIndex = index
        # Set the sellIndex to the max value in the subset of the array
        sellIndex = prices.index(prices[index..-1].max)
        if(prices[sellIndex] - prices[buyIndex]) > maxProfit
            maxProfit = prices[sellIndex] - prices[buyIndex]
            solution = [buyIndex, sellIndex]
        end
    end
    return solution
end

if __FILE__ == $0
    prices = [17,3,6,9,15,8,6,4,10,1]
    print stock_picker(prices)
end
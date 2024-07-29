#Define a method that takes an array of stock prices and returns the best days to buy and sell
def stock_picker(prices)
  max_profit = 0
  buy_day = 0
  sell_day = 0
  loop_counter = 0
  #Iterate over the prices array
  prices.each_with_index do |buy_price, buy_index|
    #Iterate over the prices array again
    prices.each_with_index do |sell_price, sell_index|
      if sell_index > buy_index
        profit = sell_price - buy_price
        loop_counter  += 1
        puts "Loop #{loop_counter}: buy_day=#{buy_index}, sell_day=#{sell_index}, profit=#{profit}"
        if profit > max_profit
          max_profit = profit
          buy_day = buy_index
          sell_day = sell_index
          puts "New max profit found: #{max_profit} (buy on day #{buy_day}, sell on day #{sell_day})"
        end
      end
    end
  end
  [buy_day, sell_day]
  puts "Total loops: #{loop_counter}"
end

puts stock_picker([17,3,6,9,15])

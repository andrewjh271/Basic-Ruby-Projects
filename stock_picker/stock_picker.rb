def stock_picker(stock_prices)
  buy_sell = []
  max_profit = 0

  stock_prices.each_with_index do |current_price, index|
    for i in index...stock_prices.length do
      if(stock_prices[i] - current_price > max_profit)
        max_profit = stock_prices[i] - current_price
        buy_sell[0] = index
        buy_sell[1] = i
      end
    end
  end

  if(max_profit == 0)
    puts "Don't bother with the stock market."
  else
    puts "Buy on Day #{buy_sell[0]} and sell on Day #{buy_sell[1]} for a profit of $#{max_profit}."
    buy_sell
  end

end

buy_sell = stock_picker([17,3,6,9,15,8,6,1,10])
p buy_sell
buy_sell = stock_picker([100, 87, 34, 30, 24, 11, 6])
p buy_sell
buy_sell = stock_picker([12, 45, 67, 78, 222, 455, 5644, 223])
p buy_sell
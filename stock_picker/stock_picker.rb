def stock_picker(stock_prices)
  buy_sell = []
  min = Float::INFINITY
  max_profit = 0

  stock_prices.each_with_index do |current_price, lft|
    next unless current_price < min

    min = current_price if current_price < min
    (lft...stock_prices.length).each do |rt|
      next unless stock_prices[rt] - current_price > max_profit

      max_profit = stock_prices[rt] - current_price
      buy_sell[0] = lft
      buy_sell[1] = rt
    end
  end

  buy_sell
end

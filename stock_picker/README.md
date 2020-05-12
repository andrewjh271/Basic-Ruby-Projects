# Substrings

### Assignment

Implement a method `#stock_picker` that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

```ruby
  > stock_picker([17,3,6,9,15,8,6,1,10])
  => [1,4]  # for a profit of $15 - $3 == $12
```

**Quick Tips:**

- You need to buy before you can sell
- Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.

### Thoughts

I'm trying to favor iterators over loops, but that seemed hard here because in the nested iterator/loop I needed to only iterate through the items after the current item. I think iterators always cover the whole array. It was annoying to work out what the right syntax was in the for loop.

### Plan

Create a max_profit variable set to 0. Find the value of each item in the array subtracted from each subsequent value. If at any point one of these values is greater than the current max_profit, set the max_profit to that new value and store the indexes of the two items involved in the array. Return this array.

### Pseudocode

```pseudocode
max_profit = 0
return_array = []
For each price in prices_array
  For each price in prices_array after current price
    value = new_price - current_price
    if value > max_profit 
      max profit = value
      return_array[0] = indexOf(current_price)
      return_array[1] = indexOf(new_price)
if(max_profit == 0)
  puts "Don't bother with the stock market."
else
  puts "Buy on Day #{return_array[0]} and sell on Day #{return_array[1]} for a profit of #{max_prift}"
return_array
```

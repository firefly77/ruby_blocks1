def stock_picker (array) 
  i = 1
  j = 0
  array2 = []
  while i < array.length do
    array2 << array[i] - array[i-1]
    i += 1
    end
  profit = 0
  maxprofit = 0
  sell = 0
  mbuy = 0
  buy = 0
  while j < array2.length do
    if (profit < 0)
      profit = 0
      mbuy = j
    end
    profit += array2[j]
    if (profit > maxprofit)
      maxprofit = profit
      sell = (j + 1)
      buy = mbuy
    end
    j += 1
  end
  output = []
  output << buy
  output << sell
  return output
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
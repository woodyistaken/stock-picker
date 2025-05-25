def stock_picker(arr) 
  max=[0,0]
  arr.each_with_index do |sell, sell_index|
    arr[0,sell_index+1].each_with_index do |buy, buy_index|
      max=[buy_index,sell_index] if arr[max[1]]-arr[max[0]]<arr[sell_index]-arr[buy_index]
    end
  end
  max
end
p stock_picker([17,3,6,9,15,8,6,1,10,-1,90,-12])
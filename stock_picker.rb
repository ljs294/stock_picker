def stock_picker(prices)
    best = [0,1]
    profit = 0
    for i in 0..prices.length-1
        for j in i+1..prices.length-1
            if (prices[j] - prices[i] > profit)
                best = [i,j]
                profit = prices[j] - prices[i]
            end
        end
    end
    puts "Best day to buy and sell is #{best[0]} and #{best[1]}, respectively, for a profit of $#{profit}.\n"
end

stock_picker([17,3,6,9,15,8,6,1,10])
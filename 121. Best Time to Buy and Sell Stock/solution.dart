class Solution {
  int maxProfit(List<int> prices) {
      int buyIndex = 0;
      int sellIndex = 0;
      int profit = 0 ;
      for(int i =1;i<prices.length;i++)
      {
          if(prices[i]<prices[buyIndex])
          {
           buyIndex = sellIndex = i;   
          }
          else if(prices[i]>prices[sellIndex])
          {
              sellIndex = i;
          }
          profit = max(profit,prices[sellIndex] - prices[buyIndex]);
      }
      return profit;

  }
}

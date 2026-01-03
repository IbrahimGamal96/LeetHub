class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    int greatestNumber = candies[0];
    for(int i=1;i<candies.length;i++){
        if(greatestNumber<candies[i]){
            greatestNumber = candies[i];
        }
    }
    return candies.map((n)=>extraCandies+n>=greatestNumber).toList();
  }
}
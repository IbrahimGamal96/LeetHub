class Solution {
  bool isHappy(int n) {
      List<int> cycle = [];
      int sum = 0;
      
      while(true){
        sum = 0;
      while(n!=0){
          final remaining = n % 10;
          sum += remaining * remaining;
        n = n ~/ 10;
      }
          n = sum;
          if(n==1)return true;
          if(cycle.contains(n))return false;
          cycle.add(n);
       
      }
  }
}

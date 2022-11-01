// First solution
class Solution {
  int climbStairs(int n) {
      if(n <= 2) return n;
   
    return climbStairs(n-1)+climbStairs(n-2); 
  }
}
// Second solution
class Solution {
  int climbStairs(int n) {
      if(n <= 2) return n;
      int previous = 1;
      int current = 2;
      for(int i = 3;i<=n;i++){
          final temp = previous;
          previous = current;
          current += temp;
      }
    return current; 
  }
}

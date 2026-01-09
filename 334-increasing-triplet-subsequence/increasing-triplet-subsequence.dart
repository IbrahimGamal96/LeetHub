class Solution {
bool increasingTriplet(List<int> nums) {
  int first = 1 << 62;   // very large number
  int second = 1 << 62;

  for (int n in nums) {
    if (n <= first) {
      first = n;
    } else if (n <= second) {
      second = n;
    } else {
      // n > first && n > second
      return true;
    }
  }
  return false;
}

}
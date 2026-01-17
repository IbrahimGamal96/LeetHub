class Solution {
  int longestOnes(List<int> nums, int k) {
    int i = 0, j = 0;
    while (j < nums.length) {
      if (nums[j++] == 0) {
        k--;
      }
      if (k < 0) {
        if (nums[i++] == 0) {
          k++;
        }
      }
    }
    return j - i;
  }
}
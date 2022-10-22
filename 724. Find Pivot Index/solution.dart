class Solution {
  int pivotIndex(List<int> nums) {
    int left = 0;
    int right = nums.fold(0,(a,b) => a+b);
      for(int i = 0;i<nums.length;i++)
      {
          right -= nums[i];
          if(left == right) return i;
          left += nums[i];
      }
      return -1;
      
  }
}

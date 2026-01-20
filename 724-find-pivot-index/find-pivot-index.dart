class Solution {
  int pivotIndex(List<int> nums) {
    int total = nums.reduce((a,b)=>a+b);
    int left = 0;
    for(int i=0;i<nums.length;i++){
        int right = total - left - nums[i];
        if(left == right)return i;
        left += nums[i];
    }
    return -1;
  }
}
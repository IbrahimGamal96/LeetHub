class Solution {
  int minSubArrayLen(int target, List<int> nums) {
    int sum = 0;
    int f = 0;
    int size=0;
    for(int e=0;e<nums.length;e++){
        sum += nums[e];
        while(sum >= target){
            if(size == 0 || size > e-f+1){
                size = e-f+1;
            }
            sum -= nums[f];
            f++;
        }
    }
    return size;
  }
}
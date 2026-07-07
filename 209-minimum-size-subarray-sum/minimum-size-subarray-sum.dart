class Solution {
  int minSubArrayLen(int target, List<int> nums) {
    int min =nums.length+1;
    int sum =0;
    int i=0;
    int j=0;

    while(i<nums.length&&j<nums.length){
        sum+=nums[i];
        while(sum>=target){
            sum-=nums[j];
            min = i-j+1<min?i-j+1:min;
            j++;
        }
        
        i++;
    }

    
    return min>nums.length?0:min;
  }
}
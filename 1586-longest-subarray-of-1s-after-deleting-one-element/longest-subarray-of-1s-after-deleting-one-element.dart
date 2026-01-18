class Solution {
  int longestSubarray(List<int> nums) {
    int delete = 1;
    int i=0;
    int j=0;
    while(j<nums.length){
        if(nums[j++]==0){
            delete--;
        }
        if(delete<0){
            if(nums[i++]==0){
                delete++;
            }
        }
    }
    return j-i-1;
  }
}
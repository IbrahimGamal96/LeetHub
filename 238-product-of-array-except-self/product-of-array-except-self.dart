class Solution {
  List<int> productExceptSelf(List<int> nums) {
    List<int> result = List.filled(nums.length,1);
    int pref = 1;
    for(int i=0;i<nums.length;i++){
        result[i] = pref;
        pref *=nums[i];
    }

    int suff = 1;
    for(int i=nums.length-1;i>=0;i--){
        result[i] *= suff;
        suff *=nums[i];
    }

    return result;
  }
}
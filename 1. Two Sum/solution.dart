class Solution {
  List<int> twoSum(List<int> nums, int target) {
      int index = 0;
      int element = nums[index];
      final last = nums.length;
      final List<int> result = [];
      int i = 1;
      while(i<last)
      {
          if((element + nums[i]) == target){
              result.addAll([index,i]);
              break;
          }
         else if(i == (last -1)) 
          {
            element = nums[++index];
            i = index + 1;
          }
        else{
          i++;
        }
      }
     return result;
  }
}

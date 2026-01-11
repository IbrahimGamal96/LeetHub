class Solution {
  void moveZeroes(List<int> nums) {
    int count = 0;
    for(int i=0;i<nums.length;i++){
        if(nums[i]==0){
            nums.removeAt(i);
            i--;
            count++;
        }
    }
    nums.addAll(List.generate(count,(_)=>0));
  }
}
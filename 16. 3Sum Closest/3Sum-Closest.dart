class Solution {
  int threeSumClosest(List<int> nums, int target) {
    nums.sort();
    int sum = nums[0]+nums[1]+nums[2];
    int closest = (sum - target).abs();
    for(int i=0;i<nums.length-2;i++){
        int f =i+1;
        int l =nums.length-1;
        while(f<l){
            int newSum = nums[i]+nums[f]+nums[l];
            int newClosest = (newSum- target).abs();
            if(newSum == target){
                return newSum;
            }
            if(closest>newClosest){
                sum = newSum;
                closest = newClosest;
            }
                if(target>newSum){
                    f++;
                }else{
                    l--;
                }
        }
    }
    return sum;
}
}
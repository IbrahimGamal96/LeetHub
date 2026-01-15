class Solution {
  double findMaxAverage(List<int> nums, int k) {
    double maxSum = 0;
    for(int i=0;i<k;i++){
        maxSum += nums[i];
    }
      double sum = maxSum;
    for(int i = k;i<nums.length;i++){
        sum +=nums[i];
        sum -=nums[i-k];
       
        if(sum > maxSum){
            maxSum = sum;
        }
    }
    return maxSum/k;
  }
}
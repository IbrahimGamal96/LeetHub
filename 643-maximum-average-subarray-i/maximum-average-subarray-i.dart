class Solution {
  double findMaxAverage(List<int> nums, int k) {
    double maxAvarrage = 0;
    double sum = 0;
    for(int i=0;i<k;i++){
        sum += nums[i];
    }
    maxAvarrage = sum/k;
    
    for(int i = k;i<nums.length;i++){
        sum +=nums[i];
        sum -=nums[i-k];
        double avarrage = sum/k;
        if(avarrage > maxAvarrage){
            maxAvarrage = avarrage;
        }
    }
    return maxAvarrage;
  }
}
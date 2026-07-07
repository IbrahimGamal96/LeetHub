class Solution {
  List<int> twoSum(List<int> numbers, int target) {
    int right=numbers.length-1;
    int left=0;

    while(right != left){
        if(numbers[left]+numbers[right]==target)
        {return [left+1,right+1];}
        else if(numbers[left]+numbers[right]>target)
        {right--;}
        else
        {left++;}
    }
    return [];
  }
}
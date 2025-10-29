class Solution {
  List<int> twoSum(List<int> numbers, int target) {

    int f = 0;
    int l = numbers.length-1;
    while(l>f){
        int sum = numbers[f]+numbers[l];
        if(sum == target){
            return [f+1,l+1];
        }else if(sum>target){
            l--;
        }else{
            f++;
        }
    }
    return [];
  }
}
class Solution {
  int searchInsert(List<int> nums, int target) {
    
return indexBinarySearch(nums,target,0,nums.length-1);    
  }

  int indexBinarySearch(List<int> nums,int n,int first,int last){
final mid = (last+first)~/2;
if(last<first){
return first;
}

if(nums[mid]==n){
    return mid;
}
else if(nums[mid]>n){
    return indexBinarySearch(nums,n,first,mid-1);
}else{
    return indexBinarySearch(nums,n,mid+1,last);
}
  }
}
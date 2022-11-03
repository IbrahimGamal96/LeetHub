class Solution {
  int search(List<int> nums, int target) {
    return returnIndex(nums,0,(nums.length),target);
  }
    int returnIndex(List<int> list,int start,int end,int target){
      final mid = ((start+end) /2).floor();
      if ( start >= list.length || end < 0) return -1;
      else if(target == list[mid]) return mid;
      else if(start >= end) return -1;
      else if(target > list[mid]) return returnIndex(list,mid+1,end,target);
      else return  returnIndex(list,0,mid-1,target);
    }
}

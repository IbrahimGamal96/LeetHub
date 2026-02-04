class RecentCounter {
late List<int> nums;
  RecentCounter() {
    nums = [];
  }
  
  int ping(int t) {
    nums.add(t);
    int count = 0;
    int f = t-3000;
    for(int i=0;i<nums.length;i++){
        if(nums[i]>=f){
            count++;
        }else{
            nums.removeAt(i);
            i--;
        }
    }
    return count;
  }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * RecentCounter obj = RecentCounter();
 * int param1 = obj.ping(t);
 */
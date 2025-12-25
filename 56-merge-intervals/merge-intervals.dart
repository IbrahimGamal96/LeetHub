class Solution {
  List<List<int>> merge(List<List<int>> intervals) {
    List<List<int>> overlabedIntervals = [];
    intervals.sort((a,b) => a[0].compareTo(b[0]));
    overlabedIntervals.add(intervals[0]);
    for(int i=1;i<intervals.length;i++){
        List<int> lastOverlabed= overlabedIntervals.last;
        List<int> current = intervals[i];
        if(current[0]<=lastOverlabed[1]){
            lastOverlabed[1] = max(current[1],lastOverlabed[1]);
        }else{
            overlabedIntervals.add(intervals[i]);
        }
    }
    return overlabedIntervals;
  }
}
class Solution {
  List<List<int>> insert(List<List<int>> intervals, List<int> newInterval) {
        final List<List<int>> newList = [];
        List<int>? nullableInterval = newInterval;
        for(int i=0;i<intervals.length;i++){
            final currentInterval = intervals[i];
            if(nullableInterval != null){
            if(nullableInterval[0]<= currentInterval[1])
            {
                if(nullableInterval[0]>= currentInterval[0]){
                    newList.add([currentInterval[0],currentInterval[1]>nullableInterval[1]?currentInterval[1]:nullableInterval[1]]);
                }else{

                    if( nullableInterval[1]>=currentInterval[0]){
                    newList.add([nullableInterval[0],currentInterval[1]>nullableInterval[1]?currentInterval[1]:nullableInterval[1]]);
                    }else{
                    newList.add(nullableInterval);
                    newList.add(currentInterval);
                    }
                }
                nullableInterval = null;
                
            }else{
                newList.add(currentInterval);
            }
            }else{
                List<int> lastInterval = newList.last;
                if(currentInterval[0]<=lastInterval[1])
                {
                    newList[newList.length-1] = [lastInterval[0],currentInterval[1]>lastInterval[1]?currentInterval[1]:lastInterval[1]];
                }else{
                    newList.add(currentInterval);
                }
            }

        }
        if(nullableInterval != null){
            newList.add(nullableInterval);
        }
        return newList;
    }

//     intervals.add(newInterval);
//     intervals.sort((a,b)=>a[0].compareTo(b[0]));
//     final  List<List<int>> newList = [intervals.first];
//     for(int i=1;i<intervals.length;i++){
//         final currentInterval = intervals[i];
//         final List<int> lastInterval = newList.last;
//                 if(currentInterval[0]<=lastInterval[1])
//                 {
//                     newList[newList.length-1] = [lastInterval[0],currentInterval[1]>lastInterval[1]?currentInterval[1]:lastInterval[1]];
//                 }else{
//                     newList.add(currentInterval);
//                 }
//     }
//     return newList;
//   }
}
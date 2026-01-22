class Solution {
  bool uniqueOccurrences(List<int> arr) {
    Map<int,int> result = {};
    for(int i=0;i<arr.length;i++){
        result[arr[i]] = (result[arr[i]] ?? 0) + 1;
    }
    // List list = result.entries.map((k)=>k.value).toList();
    // return list.length == list.toSet().length;
    Set<int> seen = {};
    for( int count in result.values){
        if(seen.contains(count) ){
            return false;
        }else{
            seen.add(count);
        }
    }
    return true;
  }
}
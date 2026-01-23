class Solution {
  bool closeStrings(String word1, String word2) {

    if(word1.length==word2.length){
        Set<String> set1 = word1.split('').toList().toSet();
        Set<String> set2 = word2.split('').toList().toSet();
        bool sameChar = set1.difference(set2).length>0?false:true;
        if(sameChar == false)return false;
        Map<String,int> count1 = {};
        Map<String,int> count2 = {};
        for(int i=0;i<word1.length;i++){
            count1[word1[i]] = (count1[word1[i]]??0) +1;
            count2[word2[i]] = (count2[word2[i]]??0) +1;
        }
        final list1  = count1.values.toList();
        final list2  = count2.values.toList();
        Map<int,int> map1 = {};
        Map<int,int> map2 = {};
        for(int i=0;i<list1.length;i++){
            map1[list1[i]] = (map1[list1[i]]??0) +1;
            map2[list2[i]] = (map2[list2[i]]??0) +1;
        }
        for(int i=0;i<list1.length;i++){
            if(map1[list1[i]] != map2[list1[i]])
            {
                return false;
            }
        }

        return true;

    }else{
        return false;
    }
    
  }
}
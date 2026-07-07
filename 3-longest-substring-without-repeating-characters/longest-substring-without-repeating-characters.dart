class Solution {
  int lengthOfLongestSubstring(String s) {
    List<String> str = [];
    int j=0;
    int max =0;
    for(int i=0;i<s.length;i++){
        while(str.contains(s[i])){
            str.remove(s[j]);
            j++;
        }
        str.add(s[i]);
        max = max>str.length?max:str.length;
    }
return max;
  }
}
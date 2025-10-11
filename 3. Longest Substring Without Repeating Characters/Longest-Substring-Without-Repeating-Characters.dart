class Solution {
  int lengthOfLongestSubstring(String s) {
    Map<String,int> str={};
    int max=0;
    int f =0;
    for(int i=0;i<s.length;i++){
        if(str.containsKey(s[i]) && str[s[i]]! >=f){
            f = str[s[i]]! +1;
        }
        if((i-f+1)>max){
            max= i-f+1;
        }
            str[s[i]]=i;
    }
    return max;
  }
}
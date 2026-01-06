class Solution {
  String gcdOfStrings(String str1, String str2) {
    String small = str1.length<str2.length?str1:str2;
    for(int i=small.length;i>0;i--){
       String qcd = small.substring(0,i);
        if(str1.replaceAll(qcd,'').isEmpty && str2.replaceAll(qcd,'').isEmpty){
            return qcd;
        }
    }
    return '';
  }
}
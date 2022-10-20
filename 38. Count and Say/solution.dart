class Solution {
  String countAndSay(int n) {
    String recurcive(int n,String str) {
     if(n == 1) return str;
    return recurcive(n-1,convertToString(str));
  }
     return recurcive(n,"1");
  }

    
String convertToString(String s){
        String result = "";
        if(s.isNotEmpty){
        int count = 0;
        String chr = s[0];
        for(int i = 0 ;i<s.length;i++){
            if(chr == s[i]){
                count++;
            }else{
                result += "$count$chr";
                count = 1;
                chr = s[i];
            }
        }
        result += "$count$chr";  
        }
   return result;
    }
    
}

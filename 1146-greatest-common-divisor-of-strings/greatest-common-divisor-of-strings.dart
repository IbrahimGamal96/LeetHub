class Solution {
  String gcdOfStrings(String str1, String str2) {
    if(str1 + str2 != str2 + str1) return '';

    int qcd(int a, b){
        if(b == 0) return a;
        return qcd(b,a % b);
    }

    return str1.substring(0,qcd(str1.length,str2.length));
  }
}
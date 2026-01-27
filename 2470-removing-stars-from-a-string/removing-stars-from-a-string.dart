class Solution {
  String removeStars(String s) {
    int startCount = 0;
    String result = "";

    for(int i=s.length-1;i>=0;i--){
        if(s[i]=="*"){
            startCount++;
        }else{
            if(startCount<1){
                result= s[i] + result;
            }else{
                startCount--;
            }
        }
    }
    return result;
  }
}
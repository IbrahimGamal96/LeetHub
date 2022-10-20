class Solution {
int romanToInt(String s) {
  int result = 0;

  for(int i = 0 ;i<s.length;i++){

  if(isSubtruction(s,i)){
      result += getNumeralValue(s[i+1]) - getNumeralValue(s[i]);
      i += 1;
  }
      else{
          result += getNumeralValue(s[i]);
      }
      
}
    return result;
}
bool isSubtruction(String s, int i){
    int j = i+1;
    if(j< s.length){
        String str1 = s[i];
        String str2 = s[j];
        if(str1 == "I" &&(str2 == "V" || str2 == "X")){
            return true;
        }
        else if(str1 == "X" &&(str2 == "L" || str2 == "C")){
            return true;
        }
        else if(str1 == "C" &&(str2 == "D" || str2 == "M")){
            return true;
        }
        else{
            return false;
        }

    }else{
        return false;
    }
}
int getNumeralValue(String s){
    switch(s){
            case "I":
            return 1;
            case "V":
            return 5;
            case "X":
            return 10;
            case "L":
            return 50;
            case "C":
            return 100;
            case "D":
            return 500;
            case "M":
            return 1000;
            default:
            return 0;
    }
}

}

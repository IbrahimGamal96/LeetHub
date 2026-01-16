class Solution {
  int maxVowels(String s, int k) {
    int maxNVowels=0;
    RegExp vowels = RegExp(r'[aeiou]');
    for(int i=0;i<k;i++){
        if(vowels.hasMatch(s[i])){
            maxNVowels++;
        }
    }

int max = maxNVowels;
    for(int i=k;i<s.length;i++){
        if(vowels.hasMatch(s[i])){
            max++;
        }
        if(vowels.hasMatch(s[i-k])){
            max--;
        }
        if(max>maxNVowels){
            maxNVowels = max;
        }
    }
    return maxNVowels;
  }
}
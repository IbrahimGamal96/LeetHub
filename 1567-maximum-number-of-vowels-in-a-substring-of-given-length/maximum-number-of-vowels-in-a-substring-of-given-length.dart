class Solution {
  int maxVowels(String s, int k) {
    int maxNVowels=0;
    // RegExp vowels = RegExp(r'[aeiou]');
    for(int i=0;i<k;i++){
        if('aeiou'.contains(s[i])){
            maxNVowels++;
        }
    }

int max = maxNVowels;
    for(int i=k;i<s.length;i++){
        if('aeiou'.contains(s[i])){
            max++;
        }
        if('aeiou'.contains(s[i-k])){
            max--;
        }
        if(max>maxNVowels){
            maxNVowels = max;
        }
    }
    return maxNVowels;
  }
}
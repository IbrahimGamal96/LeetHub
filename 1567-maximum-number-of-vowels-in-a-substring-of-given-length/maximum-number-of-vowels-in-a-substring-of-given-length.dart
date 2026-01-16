class Solution {
  int maxVowels(String s, int k) {
    int maxNVowels=0;
    RegExp vowels = RegExp(r'[aeiou]');
    List<bool> list = List.generate(s.length,(_)=>false);
    for(int i=0;i<k;i++){
        if(vowels.hasMatch(s[i])){
            maxNVowels++;
            list[i]=true;
        }
    }

int max = maxNVowels;
    for(int i=k;i<s.length;i++){
        if(vowels.hasMatch(s[i])){
            max++;
            list[i]=true;
        }
        if(list[i-k]){
            max--;
        }
        if(max>maxNVowels){
            maxNVowels = max;
        }
    }
    return maxNVowels;
  }
}
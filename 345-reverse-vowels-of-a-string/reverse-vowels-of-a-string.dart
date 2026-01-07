class Solution {
  String reverseVowels(String s) {
    List<String> list = s.split('');
    int l =0;
    int r = list.length-1;
    final regexp = RegExp(r'[aeiou]', caseSensitive: false);
    while(r>l){
        if(regexp.hasMatch(list[l]) == false){
            l++;
        }else if(regexp.hasMatch(list[r]) == false){
            r--;
        }else{
        list[l] = s[r];
        list[r] = s[l];
        r--;
        l++;
        }
    }
    return list.join('');
  }
}
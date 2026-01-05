class Solution {
  String reverseWords(String s) {
    return s.split(RegExp(r'[ ]+')).reversed.toList().join(' ').trim();
  }
}
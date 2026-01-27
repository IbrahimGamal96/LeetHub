class Solution {
  String removeStars(String s) {
    List<String> stack = [];
    for (int i = 0; i < s.length; i++) {
      if (s[i] != '*') {
        stack.add(s[i]);
      } else if (stack.isNotEmpty) {
        stack.removeLast();
      }
    }
    return stack.join();
  }
}
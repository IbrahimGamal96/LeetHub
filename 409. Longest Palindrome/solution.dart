class Solution {
  int longestPalindrome(String s) {
    final Map<String, int> count = <String, int>{};
    s.split("").forEach((String c) {
      count[c] = (count[c] ?? 0) + 1;
    });
    bool isOdd = false;
    return count.values.fold<int>(0, (int a, int b) {
          if (b.isEven) {
            return a + b;
          } else {
            isOdd = true;
            return a + (b - 1);
          }
        }) +
        (isOdd ? 1 : 0);
  }
}

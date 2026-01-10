class Solution {
  int compress(List<String> chars) {
      List<String> result = [];
  int count = 1;

  for (int i = 1; i <= chars.length; i++) {
    if (i < chars.length && chars[i] == chars[i - 1]) {
      count++;
    } else {
      // add the character
      result.add(chars[i - 1]);

      // add the count if > 1
      if (count > 1) {
        result.addAll(count.toString().split(""));
      }

      count = 1;
    }
  }

  // overwrite original array if needed
  for (int i = 0; i < result.length; i++) {
    chars[i] = result[i];
  }

  return result.length;
  }
}
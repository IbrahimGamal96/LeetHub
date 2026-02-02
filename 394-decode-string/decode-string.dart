class Solution {
  String decodeString(String s) {
    List<String> stack = [];

    for (var i = 0; i < s.length; i++) {
      var str = '';
      var number = '';

      if (s[i] == ']') {
        
        while (stack.last != '[') {
          final ch = stack.removeLast();
          str = ch + str;
        }

        stack.removeLast();

        while (stack.isNotEmpty &&
               stack.last.codeUnitAt(0) >= '0'.codeUnitAt(0) &&
               stack.last.codeUnitAt(0) <= '9'.codeUnitAt(0)) {
          final num = stack.removeLast();
          number = num + number;
        }

        final count = int.parse(number);

        for (var i = 0; i < count; i++) {
          stack.add(str);
        }
      } else {
        stack.add(s[i]);
      }
    }

    return stack.join();
  }
}
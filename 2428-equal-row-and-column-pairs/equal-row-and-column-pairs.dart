import 'dart:collection';
class Solution {
  int equalPairs(List<List<int>> grid) {
    int pair = 0;
    int temp = 0;
    int row = 0;

    while (temp <= grid.length - 1) {
      final HashMap<int, int> map = HashMap<int, int>();
      for (int j = 0; j < grid.length; j++) {
        map[j] = grid[row][j];
      }
      for (int i = 0; i < grid.length; i++) {
        int current = 0;
        for (int k = 0; k < grid.length; k++) {
          if (map[k] != grid[k][i]) {
            current = 0;
            break;
          } else {
            current = 1;
          }
        }
        pair += current;
      }
      row++;
      temp++;
    }
    return pair;
  }
}
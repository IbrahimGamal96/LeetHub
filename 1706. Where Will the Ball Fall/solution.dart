class Solution {
  List<int> findBall(List<List<int>> grid) {
    final List<int> result = List<int>.generate(grid.first.length, (int i) => i);
    grid.forEach((List<int> row) {
      for (int i = 0; i < result.length; i++) {
        int ballIndex = result[i];
        if (ballIndex == -1) continue;
        if (1 == row[ballIndex]) {
          ballIndex += 1;
          if (ballIndex <= row.length - 1 && row[ballIndex] == 1) {
            result[i] = ballIndex;
          } else {
            result[i] = -1;
          }
        } else {
          ballIndex -= 1;
          if (ballIndex >= 0 && row[ballIndex] == -1) {
            result[i] = ballIndex;
          } else {
            result[i] = -1;
          }
        }
      }
    });
    return result;
  }
}

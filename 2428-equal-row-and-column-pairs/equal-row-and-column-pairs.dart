class Solution {
  int equalPairs(List<List<int>> grid) {
    int count =0;
    int n =grid.length;
    for(int i=0;i<n;i++){
        for(int j=0;j<n;j++){
            bool isEqual = true;
            for(int k = 0;k<n;k++){
                if(grid[i][k]!=grid[k][j]){
                isEqual = false;
                }
            }
            if(isEqual){
                count++;
            }
        }
    }
    return count;
  }
}
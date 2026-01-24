class Solution {
  int equalPairs(List<List<int>> grid) {
    int count =0;
    int n =grid.length;
    List<List<int>> gridCo = [];
    for(int i=0;i<n;i++){
        List<int> list = [];
        for(int j=0;j<n;j++){
            list.add(grid[j][i]);
        }
        gridCo.add(list);
    }
    
    for(int i=0;i<n;i++){
        for(int j=0;j<n;j++){
            bool isEqual = true;
            for(int k = 0;k<n;k++){
                if(grid[i][k]!=gridCo[j][k]){
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
class Solution {
  int equalPairs(List<List<int>> grid) {
    int count =0;
    for(int i=0;i<grid.length;i++){
        // for(int j=i+1;j<grid.length;j++){
        //     int verCount = 0;
        //     for(int k = 0;k<grid[i].length;k++){
        //         if(grid[i][k]==grid[j][k]){
        //         verCount++;
        //         }
        //     }
        //     if(verCount == grid[j].length){
        //         count++;
        //     }
        // }
        for(int j=0;j<grid.length;j++){
            int horCount = 0;
            for(int k = 0;k<grid[i].length;k++){
                if(grid[i][k]==grid[k][j]){
                horCount++;
                }
            }
            if(horCount == grid[j].length){
                count++;
            }
        }
    }
    return count;
  }
}
class Solution {
  int maxArea(List<int> height) {
    int f = 0;
    int l = height.length-1;
        int area = 0;
while(f<l){
 final int area1 = computeArea(height,f,l);
 if(area1>area){
                area = area1;
            }
            if(height[f]<height[l]){
                f++;
            }else{
                l--;
            }
}

    return area;
  }
  int computeArea(List<int> height,int f, int l){
    int i = l-f;
    return (height[f]<height[l])? height[f] * i:height[l] * i;
  }
}
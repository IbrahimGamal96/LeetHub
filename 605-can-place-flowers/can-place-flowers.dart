class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    int i=0;
    while(n>0 && i<flowerbed.length){
 if(flowerbed[i]==0){
            if((i==0 || flowerbed[i-1]==0) && (i+1 == flowerbed.length || flowerbed[i+1]==0 )){
                flowerbed[i] = 1;
                n--;
            }
        }
        i++;
    }
    return n==0;
  }
}
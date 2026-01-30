class Solution {
  List<int> asteroidCollision(List<int> asteroids) {
    
    int prev= asteroids.first;
    List<int> result = [asteroids.first];
    for(int i=1;i<asteroids.length;i++){
        int current = asteroids[i];
        if(result.isEmpty){
            result.add(current);
        }else{
        int prev= result.last;
        if(prev> 0 && current>0 || prev < 0 && current<0 || prev<0 && current >0 ){
            result.add(current);
        }else if(prev > 0 && current<0){
            result.add(current);
            int j=result.length-2;
            while(j>=0 && (current <0 && result[j]>0)){
                if(current.abs()>result[j].abs()){
                       result[j]=current;
                       result.removeLast();
                       j--;
                }else if (current.abs()==result[j].abs()){
                    result.removeLast();
                    result.removeLast();
                    break;
                }else{
                    current = result[j];
                     result.removeLast();
                    j--;
                }
            }
            
        }
        }
    }
    return result;
    
  }
}
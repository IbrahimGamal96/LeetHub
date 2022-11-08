// Runtime: 463 ms, faster than 44.44% of Dart online submissions for Spiral Matrix.
// Memory Usage: 140.2 MB, less than 100.00% of Dart online submissions for Spiral Matrix.
class Solution {
  List<int> spiralOrder(List<List<int>> matrix) {
      final spiral = <int>[];
      while(matrix.isNotEmpty){
          /// right
          matrix.first.removeWhere((element){
              spiral.add(element);
              return true;
          });
          matrix.removeWhere((element){
              return element.isEmpty;
          });
          /// down
          matrix.forEach((element){
              final item = element.last;
              spiral.add(element.last);
              element.removeAt(element.indexOf(item));
          });
          
          /// left
          if(matrix.isNotEmpty){
		  int insertIndex = spiral.length;
             matrix.last.removeWhere((element){
              spiral.insert(insertIndex,element);
              return true;
          });
          matrix.removeWhere((element){
              return element.isEmpty;
          });}
          /// up
        final  insertIndex = spiral.length;
          matrix.forEach((element){
              spiral.insert(insertIndex,element.first);
              element.removeAt(0);
          });
      }
    return spiral;
  }
}

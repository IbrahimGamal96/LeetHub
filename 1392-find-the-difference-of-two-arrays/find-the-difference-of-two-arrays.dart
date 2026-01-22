class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    // List<int> n1 = [];
    // List<int> n2 = [];
    // for(int i=0;i<nums1.length;i++){
    //     if(nums2.contains(nums1[i]) == false && n1.contains(nums1[i]) == false){
    //         n1.add(nums1[i]);
    //     }
    // }
    // for(int i=0;i<nums2.length;i++){
    //     if(nums1.contains(nums2[i])==false && n2.contains(nums2[i]) == false){
    //         n2.add(nums2[i]);
    //     }
    // }

    // return [n1,n2];

    return [nums1.toSet().difference(nums2.toSet()).toList(),nums2.toSet().difference(nums1.toSet()).toList()];
  }
}
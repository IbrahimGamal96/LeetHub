// Faster solution
// Runtime: 904 ms, faster than 61.64% of Dart online submissions for Median of Two Sorted Arrays.
// Memory Usage: 151 MB, less than 53.46% of Dart online submissions for Median of Two Sorted Arrays.
class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
  // Find small list
      if(nums1.length>nums2.length)
          {
          final nums3 = nums2;
          nums2 = nums1;
          nums1 = nums3;
      }
      int i=0,j=0;
      while(j<nums1.length)
      {
           if(i>=nums2.length || nums1[j]<nums2[i])
          {
              nums2.insert(i,nums1[j]);
              j++;
          }else {
               i++;
           }
      }
      final length = nums2.length - 1;
      final mid = length ~/ 2;
      return (length % 2 == 0)?nums2[mid]*1.0 : (nums2[mid] + nums2[mid+1])/2;
  }
}
// Simple solution
// class Solution {
//   double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
//       nums2..addAll(nums1)
//            ..sort();
//       final length = nums2.length - 1;
//       final mid = length ~/ 2;
//       return (length % 2 == 0)?nums2[mid]*1.0 : (nums2[mid] + nums2[mid+1])/2;
//   }
// }

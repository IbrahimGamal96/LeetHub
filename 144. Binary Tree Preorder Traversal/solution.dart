/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  List<int> preorderTraversal(TreeNode? root) {
final result = <int>[];
      addToList(root,result);
      return result;
  }
    
    void addToList(TreeNode? root,List<int> list){
    if(root == null) return;
    list.add(root.val);
    addToList(root.left,list);
    addToList(root.right,list);
    }
}

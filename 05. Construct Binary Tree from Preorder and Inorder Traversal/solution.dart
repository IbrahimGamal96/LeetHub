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
  TreeNode? buildTree(List<int> preorder, List<int> inorder) {
      
     if(inorder == null || preorder == null) return null;
      if(inorder.length < 1 || preorder.length < 1) return null;
      
      final root = TreeNode(preorder[0]);
      final index = inorder.indexOf(preorder[0]);
      root.left = buildTree(preorder.sublist(1,index + 1),inorder.sublist(0,index));
      root.right = buildTree(preorder.sublist(index + 1,preorder.length),inorder.sublist(index + 1,inorder.length));
      return root;
  }
}

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
  bool isBalanced(TreeNode? root) {
      if(root == null) return true;
   if((hieghtCaculator(root.left) - hieghtCaculator(root.right)).abs()>1)
       return false;
      return isBalanced(root.left) && isBalanced(root.right);

  }
    
   int hieghtCaculator(TreeNode? root)
    {
       if(root == null) return 0;
       return 1 + max(hieghtCaculator(root.left), hieghtCaculator(root.right));
   }
}

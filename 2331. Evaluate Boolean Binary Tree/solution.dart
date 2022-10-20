class Solution {
  bool evaluateTree(TreeNode? root) {
      if(root == null) return false;
      switch (root.val)
      {
              case 1:
              return true;
              case 0:
              return false;
              case 2:
              return evaluateTree(root.left) || evaluateTree(root.right);
              case 3:
              return evaluateTree(root.left) && evaluateTree(root.right);
              default:
              return false;
      }

  }
}

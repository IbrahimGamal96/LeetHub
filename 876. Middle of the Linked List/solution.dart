/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? middleNode(ListNode? head) {
      ListNode? oneStep = head;
      ListNode? twoSteps = head;
      while(twoSteps != null && twoSteps.next != null)
      {
          oneStep = oneStep?.next;
          twoSteps = twoSteps.next?.next;
      }
      return oneStep;

  }
}
class Solution {
  ListNode? middleNode(ListNode? head) {
      int length = (nodeLength(head)/2).floor();
      while(length>0)
      {
          head = head?.next;
          length--;
      }
      return head;

  }
    int nodeLength(ListNode? node){
    if(node == null) return 0;
    return nodeLength(node?.next)+1;
    }
}

/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? reverseList(ListNode? head) {
      ListNode? current ;
      while(head != null)
      {
          final node = ListNode(head?.val??0);
          node.next = current;
          current = node;
          head = head.next;
      }
      return current;

  }
}

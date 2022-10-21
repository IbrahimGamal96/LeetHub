/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode? result = ListNode();
    recursive(result, l1, l2, 0);
    return result.next;
  }
   void  recursive(ListNode? l, ListNode? l1, ListNode? l2,int cary) {
        if(l1 == null && l2 == null && cary==0) return;
        int num = (l1?.val??0) + (l2?.val??0) + cary;
        cary = num ~/ 10;
        l?.next = ListNode(num % 10);
        recursive(l?.next, l1?.next, l2?.next, cary);   
    }
    
}

/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
      final node = ListNode();
      mergeList(node,list1,list2);
      return node.next;
  }
    
    mergeList(ListNode? root,ListNode? list1, ListNode? list2)
    {
        if(list1 == null && list2 == null) return;
        else if(list1 == null)
        {
            root?.next = ListNode(list2!.val);
            mergeList(root?.next,list1,list2?.next);
        }
        else if(list2 == null)
        { 
            root?.next = ListNode(list1!.val);
             mergeList(root?.next,list1?.next,list2);
        }
        else if(list1!.val < list2!.val)
        {
            root?.next = ListNode(list1!.val);
             mergeList(root?.next,list1?.next,list2);
            
        }else{
           root?.next = ListNode(list2!.val);
            mergeList(root?.next,list1,list2?.next);
        }
        
    }
}

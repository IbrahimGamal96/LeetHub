/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        var list : [ListNode?] = []
        var node : ListNode? = head
        
        while node != nil {
            if list.contains(where:{$0 === node}) {
                return node
            }else{
                list.append(node)
            }
            node = node?.next
        }
        return node
    }
}
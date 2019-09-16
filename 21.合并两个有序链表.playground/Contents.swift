//将两个有序链表合并为一个新的有序链表并返回。新链表是通过拼接给定的两个链表的所有节点组成的。
//
//示例：
//
//输入：1->2->4, 1->3->4
//输出：1->1->2->3->4->4
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/merge-two-sorted-lists

import UIKit


 public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
 }

class Solution {
    func mergeTwoLists(l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let p = ListNode(0)
        var node = p
        var l1 = l1
        var l2 = l2
        while l1 != nil && l2 != nil {
            if l1!.val < l2!.val {
                node.next = l1
                l1 = l1!.next
            } else {
                node.next = l2
                l2 = l2!.next
            }
            node = node.next!
        }
        
        node.next = l1 ?? l2
        
        return p.next
    }
}

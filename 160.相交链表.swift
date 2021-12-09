/*
 * @lc app=leetcode.cn id=160 lang=swift
 *
 * [160] 相交链表
 */

// @lc code=start
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
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        if headA == nil || headB == nil {
          return nil
        }
        var A: ListNode? = headA
        var B: ListNode? = headB
        while A !== B {
          A = (A == nil ? headB : A?.next)
          B = (B == nil ? headA : B?.next)
        }
        return A
    }
}
// @lc code=end


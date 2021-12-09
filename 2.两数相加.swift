/*
 * @lc app=leetcode.cn id=2 lang=swift
 *
 * [2] 两数相加
 */

// @lc code=start
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var list1 = l1
        var list2 = l2
        var result: ListNode?
        var head: ListNode?
        var carry = 0
        while list1 != nil || list2 != nil  || carry != 0 {
            var value = (list1?.val ?? 0) + (list2?.val ?? 0) + carry
            carry = value / 10
            value = value % 10
            if (result == nil) {
                result = ListNode(value)
                head = result
            } else {
                result?.next = ListNode(value)
                result = result?.next
            }
            list1 = list1?.next
            list2 = list2?.next
        }
        return head
    }
}
@lc code=end


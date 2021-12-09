/*
 * @lc app=leetcode.cn id=21 lang=swift
 *
 * [21] 合并两个有序链表
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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    if list1 == nil {return list2}
    if list2 == nil {return list1}
    var l1 = list1
    var l2 = list2
    let head: ListNode = ListNode()
    var current = head
    while l1 != nil && l2 != nil {
        if l2!.val > l1!.val {
            current.next = l1
            l1 = l1!.next
        } else {
            current.next = l2
            l2 = l2!.next
        }
        current = current.next!
    }
    current.next = l1 ?? l2
    return head.next
}
}
// @lc code=end


/*
 * @lc app=leetcode.cn id=19 lang=swift
 *
 * [19] 删除链表的倒数第 N 个结点
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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
      if head == nil || n == 0 {
        return nil
      }
      var first = head
      var second = head
      var index = 0
      while first?.next != nil {
        first = first?.next
        index += 1
        if index > n {
          second = second?.next
        }
      }
      if index >= n {
        second?.next = second?.next?.next
        return head
      } else {
        return head?.next
      }
    }
}
// @lc code=end


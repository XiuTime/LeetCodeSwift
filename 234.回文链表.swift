/*
 * @lc app=leetcode.cn id=234 lang=swift
 *
 * [234] 回文链表
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
    func isPalindrome(_ head: ListNode?) -> Bool {
      var p1: ListNode? = head
      var p2: ListNode? = head
      var p3: ListNode? = nil
      while p2 != nil && p2?.next != nil {
        p2 = p2?.next?.next
        let tmp = p1?.next
        p1?.next = p3
        p3 = p1
        p1 = tmp
      }
      if p2 != nil {
        if p1 == nil {
          return true
        }
        p1 = p1?.next
      }
      while p1 != nil && p3 != nil {
        if p1?.val != p3?.val {
          return false
        } else {
          p1 = p1?.next
          p3 = p3?.next
        }
      }
      return true
    }
}
// @lc code=end


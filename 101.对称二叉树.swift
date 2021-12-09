/*
 * @lc app=leetcode.cn id=101 lang=swift
 *
 * [101] 对称二叉树
 */

// @lc code=start
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
      return compare(root, root)
    }

    func compare(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
      if left == nil && right == nil {
        return true
      }
      if left?.val != right?.val {
        return false
      }
      return compare(left?.left, right?.right) && compare(left?.right, right?.left)
    }
}

// @lc code=end


/*
 * @lc app=leetcode.cn id=94 lang=swift
 *
 * [94] 二叉树的中序遍历
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
    // func inorderTraversal(_ root: TreeNode?) -> [Int] {
    //   if root == nil {
    //     return []
    //   }
    //   return inorderTraversal(root?.left) + [(root?.val)!] + inorderTraversal(root?.right)
    // }
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
      var list: [Int] = []
      var stack: [TreeNode] = []
      var root = root 
      while root != nil || !stack.isEmpty {
        while root != nil {
          stack.append(root!)
          root = root?.left
        }
        root = stack.removeLast()
        list.append((root?.val)!)
        root = root?.right
      }
      return list
    }
}
// @lc code=end


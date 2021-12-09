/*
 * @lc app=leetcode.cn id=136 lang=swift
 *
 * [136] 只出现一次的数字
 */

// @lc code=start
class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
      var value = 0
      nums.forEach {
        value ^= $0
      }
      return value
    }
}
// @lc code=end


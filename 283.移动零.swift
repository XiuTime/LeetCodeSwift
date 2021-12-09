/*
 * @lc app=leetcode.cn id=283 lang=swift
 *
 * [283] 移动零
 */

// @lc code=start
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
      var i = 0, j = 0
      let count = nums.count
      while j < count {
        if nums[j] != 0 {
          nums.swapAt(j, i)
          i += 1
        }
        j += 1
      }
    }
}
// @lc code=end


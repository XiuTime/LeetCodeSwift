/*
 * @lc app=leetcode.cn id=11 lang=swift
 *
 * [11] 盛最多水的容器
 */

// @lc code=start
class Solution {
    func maxArea(_ height: [Int]) -> Int {
      var maxValue = 0
      var l = 0, r = height.count - 1
      while l < r {
        maxValue = max(maxValue, (r - l) * min(height[r], height[l]))
        if height[l] < height[r] {
          l += 1
        } else {
          r -= 1
        }
      }
      return maxValue
    }
}
// @lc code=end


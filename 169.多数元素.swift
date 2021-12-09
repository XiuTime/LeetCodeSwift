/*
 * @lc app=leetcode.cn id=169 lang=swift
 *
 * [169] 多数元素
 */

// @lc code=start
class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
      if nums.isEmpty {return Int.min}
      var candidate = nums[0]
      var count = 0
      nums.forEach {
        if count == 0 {
          candidate = $0
        }
        count += (candidate == $0 ? 1 : -1)
      }
      return candidate
    }
}
// @lc code=end


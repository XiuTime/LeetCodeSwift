/*
 * @lc app=leetcode.cn id=448 lang=swift
 *
 * [448] 找到所有数组中消失的数字
 */

// @lc code=start
class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
      var nums = nums
      var result = [Int]()
      for i in 0 ..< nums.count {
        let index = abs(nums[i]) - 1
        if nums[index] > 0 {
          nums[index] = -nums[index]
        }
      }
      for i in 0 ..< nums.count {
        if nums[i] >= 0 {
          result.append(i + 1)
        }
      }
      return result
    }
}
// @lc code=end


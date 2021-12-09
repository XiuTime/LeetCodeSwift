/*
 * @lc app=leetcode.cn id=31 lang=swift
 *
 * [31] 下一个排列
 */

// @lc code=start
class Solution {
    func nextPermutation(_ nums: inout [Int]) {
      var i = nums.count - 2
      while i >= 0 && nums[i] >= nums[i + 1] {
        i -= 1
      }
      if i >= 0 {
        var j = nums.count - 1
        while j >= 0 && nums[i] >= nums[j] {
          j -= 1
        }
        nums.swapAt(i,j)
      }
      reverse(&nums, i + 1)
      return
    }

    func reverse(_ nums: inout [Int], _ start: Int) {
        var l = start
        var r = nums.count - 1
        while l < r {
          nums.swapAt(l,r)
          l += 1
          r -= 1
        }
    }
}
// @lc code=end


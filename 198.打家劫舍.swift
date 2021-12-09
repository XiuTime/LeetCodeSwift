/*
 * @lc app=leetcode.cn id=198 lang=swift
 *
 * [198] 打家劫舍
 */

// @lc code=start
class Solution {
       func rob(_ nums: [Int]) -> Int {
        var total1 = 0
        var total2 = 0
        
        for i in 0 ..< nums.count {
            let value = i % 2
            if value == 0  {
                total1 += nums[i]
            } else if value == 1 {
                total2 += nums[i]
            }
        }
        return max(total1, total2)
    }
}
// @lc code=end


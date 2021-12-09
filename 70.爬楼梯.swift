/*
 * @lc app=leetcode.cn id=70 lang=swift
 *
 * [70] 爬楼梯
 */

// @lc code=start
class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n < 0 {
            return 0
        }
        if n <= 2 {
            return n
        }
        var total = 0, last1 = 1, last2 = 0
        
        for i in 1...n {
            total = last1 + last2
            last2 = last1
            last1 = total
        }
        
        return total
    }
}
// @lc code=end


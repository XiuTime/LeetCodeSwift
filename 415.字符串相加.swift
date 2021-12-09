/*
 * @lc app=leetcode.cn id=415 lang=swift
 *
 * [415] 字符串相加
 */

// @lc code=start
class Solution {
    func addStrings(_ num1: String, _ num2: String) -> String {
        let num1A = Array(num1.reversed())
        let num2A = Array(num2.reversed())
        var sum = ""
        let num1Count = num1.count
        let num2Count = num2.count
        var carray = 0
        var i = 0
        var j = 0
        while i < num1Count || j < num2Count || carray > 0 {
            var value = (i < num1Count ? num1A[i].wholeNumberValue! : 0) + (j < num2Count ? num2A[j].wholeNumberValue! : 0) + carray
            carray = value / 10
            value %= 10
            sum.append(String(value))
            i += 1
            j += 1
        }
    return String(sum.reversed())
    }
}
// @lc code=end


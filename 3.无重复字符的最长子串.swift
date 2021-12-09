/*
 * @lc app=leetcode.cn id=3 lang=swift
 *
 * [3] 无重复字符的最长子串
 */

// @lc code=start
class Solution {
    //思路滑动窗口，如果发现重复的改变窗口大小，
    //窗口的起始位置，由上一个重复位置确定
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxLenght = 0, startIndex = 0
        var box: [Character: Int] = [:]
        for (index, c) in s.enumerated() {
            if let value = box[c] {
                startIndex = max(startIndex, value)
            }
            box[c] = index + 1
            maxLenght = max(maxLenght, index - startIndex + 1)
        }
        return maxLenght
    }
}
// @lc code=end


/*
 * @lc app=leetcode.cn id=338 lang=swift
 *
 * [338] 比特位计数
 */

// @lc code=start
class Solution {
    func countBits(_ n: Int) -> [Int] {
      if n == 0 {return [0]}
      var list = [Int](repeatElement(0, count: n+1))
      for i in 1 ... n {
        if i % 2 == 1 {
          list[i] = list[i - 1] + 1
        } else {
          list[i] = list[i / 2]
        }
      }
      return list
    }
}
// @lc code=end


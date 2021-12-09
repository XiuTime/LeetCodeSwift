/*
 * @lc app=leetcode.cn id=121 lang=swift
 *
 * [121] 买卖股票的最佳时机
 */

// @lc code=start
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
      guard prices.count > 0 else {return 0}
        let n = prices.count
        var minBuy = prices[0]
        var maxMoney = 0
        for i in 1 ..< n {
          if prices[i] < minBuy {
            minBuy = prices[i]
          } else {
            maxMoney = max(prices[i] - minBuy, maxMoney)
          }
        }
        return maxMoney
    }
}
// @lc code=end


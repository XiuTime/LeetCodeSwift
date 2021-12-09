/*
 * @lc app=leetcode.cn id=53 lang=swift
 *
 * [53] 最大子序和
 */

// @lc code=start
class Solution {
  // func maxSubArray(_ nums: [Int]) -> Int {
  //   var pre = 0, maxValue = nums[0]
  //   nums.forEach {
  //     pre = max(pre + $0, $0)        
  //     maxValue = max(pre, maxValue)
  //   }
  //   return maxValue
  // }
   struct Status {
    let lSum: Int //以l为顶点的最大区间
    let rSum: Int //以r为顶点的最大区间
    let mSum: Int //以l-r最大区间
    let iSum: Int //l-r的和
    init(l: Int, r: Int, m: Int, i: Int){
      self.lSum = l
      self.rSum = r
      self.mSum = m
      self.iSum = i
    }
  }
  func maxSubArray(_ num: [Int]) -> Int {
    return getInfo(num, 0, num.count - 1).mSum
  }

  func getInfo(_ num: [Int], _ l: Int, _ r: Int) -> Status {
    if l == r {
      return Status(l: num[l], r: num[l], m: num[l],i: num[l])
    }
    let m = (r + l) >> 1
    let lSub = getInfo(num, l, m)
    let rSub = getInfo(num, m + 1, r)
    return pushUp(lSub, rSub)
  }
  func pushUp(_ l: Status, _ r: Status) -> Status {
    let lSum = max(l.lSum, l.iSum + r.lSum)
    let rSum = max(r.rSum, r.iSum + l.rSum)
    let mSum = max(max(l.rSum + r.lSum, l.mSum), r.mSum)
    let iSum = l.iSum + r.iSum
    return Status(l: lSum, r: rSum, m: mSum, i: iSum)
  }

}
// @lc code=end


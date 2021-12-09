/*
 * @lc app=leetcode.cn id=15 lang=swift
 *
 * [15] 三数之和
 */

// @lc code=start
class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
    var nums = nums
    nums.sort(by: <)
    var resultList: [[Int]] = []
    for i in 0 ..< nums.count {
        if i > 0, nums[i] == nums[i - 1] { continue }
        var three = nums.count - 1
        let targe = -nums[i]
        for j in i + 1 ..< nums.count {
            if j > i + 1, nums[j] == nums[j - 1] { continue }
            
            while j < three && nums[j] + nums[three] > targe {
                three -= 1
            }
            if j == three {
                break
            }
            if nums[j] + nums[three] == targe {
                resultList.append([nums[i], nums[j], nums[three]])
            }
        }
      }
    return resultList
  }
}
// @lc code=end


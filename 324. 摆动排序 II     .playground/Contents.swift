//给定一个无序的数组 nums，将它重新排列成 nums[0] < nums[1] > nums[2] < nums[3]... 的顺序。
//
//示例 1:
//
//输入: nums = [1, 5, 1, 1, 6, 4]
//输出: 一个可能的答案是 [1, 4, 1, 5, 1, 6]
//示例 2:
//
//输入: nums = [1, 3, 2, 2, 3, 1]
//输出: 一个可能的答案是 [2, 3, 1, 3, 1, 2]
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/wiggle-sort-ii
import UIKit

class Solution {
    func wiggleSort(_ nums: inout [Int]) {
        let temp = nums.sorted()
        
        var m = temp.count
        var n = (m + 1) / 2
        
        for i in 0..<nums.count {
            if i & 1 == 0 {
                n = n - 1
                nums[i] = temp[n]
            } else {
                m = m - 1
                nums[i] = temp[m]
            }
        }
    }
}
let a = Solution()
var q = [1,3,2,2,3,1]
a.wiggleSort(&q)

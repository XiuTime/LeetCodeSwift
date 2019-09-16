//给定一个整数数组和一个整数 k，判断数组中是否存在两个不同的索引 i 和 j，使得 nums [i] = nums [j]，并且 i 和 j 的差的绝对值最大为 k。
//
//示例 1:
//
//输入: nums = [1,2,3,1], k = 3
//输出: true
//示例 2:
//
//输入: nums = [1,0,1,1], k = 1
//输出: true
//示例 3:
//
//输入: nums = [1,2,3,1,2,3], k = 2
//输出: false
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/contains-duplicate-ii

import UIKit

class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        if nums.count <= 1 {
            return false
        }
        var dict = [Int: Int]()
        
        for i in 0..<nums.count {
            guard let index = dict[nums[i]],i - index <= k else {
                dict[nums[i]] = i
                continue
            }
            return true
        }
        
        return false
    }
}

let a = Solution()
a.containsNearbyDuplicate([1,0,1,1], 1)
a.containsNearbyDuplicate([1,2,3,1,2,3], 2)

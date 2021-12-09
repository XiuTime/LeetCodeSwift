/*
 * @lc app=leetcode.cn id=4 lang=swift
 *
 * [4] 寻找两个正序数组的中位数
 */

// @lc code=start
//思路： 找到两个数组的公共分割线，然后使用二分法。
//分割线需要满足
class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    let m = nums1.count, n = nums2.count
    guard m < n else {
        return findMedianSortedArrays(nums2, nums1)
    }
    let mid = (m + n + 1) >> 1
    var left = 0, right = m
    while left < right {
        let i = (left + right + 1) >> 1
        let j = mid - i
        if nums1[i - 1] > nums2[j] {
            right = i - 1
        } else {
            left = i
        }
    }
    let i = left, j = mid - i
    let nums1MinRight = i == m ? Int.max : nums1[i]
    let nums1MaxLeft = i == 0 ? Int.min : nums1[i]

    let nums2MinRight = j == n ? Int.max : nums2[j]
    let nums2MaxLeft = j == 0 ? Int.min: nums2[j]
    if (m + n) % 2 == 1 {
        return Double(max(nums1MaxLeft,nums2MaxLeft))
    } else {
        return Double(max(nums1MaxLeft,nums2MaxLeft) + min(nums1MinRight, nums2MinRight)) / 2
    }
  }
}
// @lc code=end


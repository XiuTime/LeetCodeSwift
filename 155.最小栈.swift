/*
 * @lc app=leetcode.cn id=155 lang=swift
 *
 * [155] 最小栈
 */

// @lc code=start

class MinStack {

    var list:[Int]
    var minValue: Int

    init() {
      list = []
      minValue = Int.max
    }
    
    func push(_ val: Int) {
      list.append(val)
      minValue = min(minValue, val)
    }
    
    func pop() {
      if list.isEmpty {
        return
      }
      let val = list.removeLast()
      if val == minValue {
        minValue = list.min() ?? Int.max
      }
    }
    
    func top() -> Int {
      let val = list.last ?? Int.max
      return val
    }
    
    func getMin() -> Int {
      return minValue
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */
// @lc code=end


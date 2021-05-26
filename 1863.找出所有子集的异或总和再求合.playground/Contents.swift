import UIKit

class Solution {
    
    func subsetXORSum(_ nums: [Int]) -> Int {
        return getSubsets(nums).reduce(0) { (result, subsets) in
            return result + subsetXOR(subsets)
        }
    }
    
    /// 拆分子集
    /*
     思路：每遍历一个数，将已有集合copy一份，并插入新的数字
     例如：[1,2,3,4]
     遍历1：[],[1]
     遍历2：[],[1],[2],[12]
     遍历3：[],[1],[2],[12],[3],[13],[23],[123]
     遍历4：[],[1],[2],[12],[3],[13],[23],[123],[4],[14],[24],[124],[34],[134],[234],[1234]
     TODO: 空间占用大，需要优化
     */
    func getSubsets(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 1 else { return [nums] }
        var result: [[Int]] = [[]]  // 预置空集
        for num in nums {
            var tmp = result
            (0..<tmp.count).forEach { (i) in
                tmp[i].append(num)
            }
            result.append(contentsOf: tmp)
        }
        return result
    }
    
    /// 对数组元素进行异或总和运算
    func subsetXOR(_ nums: [Int]) -> Int {
        guard nums.count > 0 else { return 0 }
        return nums.reduce(0) { (result, num) in
            return result == 0 ? num : result ^ num
        }
    }
}

let nums = [3,4,5,6,7,8]
let result = Solution().subsetXORSum(nums)
print(result)


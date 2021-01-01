
// 最容易想到双循环，但时间复杂度稍高，用哈希空间换时间进行优化

class Solution {
    
    // 双循环，O(n^2)，O(1)
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for (index, num) in nums.enumerated() {
            for (matchIndex, matchNum) in nums.dropFirst(index + 1).enumerated() {
                if num + matchNum == target {
                    return [index, matchIndex + index + 1]
                }
            }
        }
        return []
    }
    
    // 哈希，O(n), O(n)
    func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        for (index, num) in nums.enumerated() {
            if let matchIndex = dict[target - num] {
                return [index, matchIndex]
            } else {
                dict[num] = index
            }
        }
        return []
    }
}

let nums = [2, 7, 11, 15]
let target = 9

let result = Solution().twoSum(nums, target)
print(result)

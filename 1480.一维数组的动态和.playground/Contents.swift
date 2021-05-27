import Foundation

class Solution {
    
    func runningSum(_ nums: [Int]) -> [Int] {
        
        var sum: [Int] = []
        
        for i in (0..<nums.count) {
            if sum.count <= 0 {
                sum.append(nums[i])
            } else {
                sum.append(sum[i - 1] + nums[i])
            }
        }
        return sum
    }
}

let nums = [1,2,3,4,5,6,]

print(Solution().runningSum(nums))

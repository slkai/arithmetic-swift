import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else { return false }  // 负数肯定不是回文
        guard x >= 10 else { return true }  // 一位数肯定是回文
        let nums = getNumbers(x)
        
        var isPalindrom = true
        for i in (0..<nums.count / 2) {
            if nums[i] != nums[nums.count - i - 1] {
                isPalindrom = false
                break
            }
        }
        return isPalindrom
    }

    /// 整型转数组
    func getNumbers(_ x: Int) -> [Int] {
        var nums: [Int] = []
        // 拆成数组
        var x = x
        while x / 10 > 0 {
            nums.append(x % 10)
            x = x / 10
        }
        nums.append(x)
        return nums.reversed()
    }
}


let x = 12321

print(Solution().isPalindrome(x))


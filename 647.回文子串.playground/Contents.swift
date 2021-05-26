import Foundation

class Solution {
    
    func countSubstrings(_ s: String) -> Int {
        var count = 0
        let subStrings = getSubStrings(s)
        
        for subString in subStrings {
            if isReverse(subString) {
                count += 1
            }
        }
        return count
    }
    
    /// 判断是否回文
    func isReverse(_ string: String) -> Bool {
        var isReverse = true
        for i in (0..<string.count / 2) {
            let firstIndex = string.index(string.startIndex, offsetBy: i)
            let lastIndex = string.index(string.startIndex, offsetBy: string.count - i - 1)
            let firstStr = string[firstIndex]
            let lastStr = string[lastIndex]
            if firstStr != lastStr {
                isReverse = false
                break
            }
        }
        return isReverse
    }
    
    /// 获取所有子串
    func getSubStrings(_ s: String) -> [String] {
        var subStrings: [String] = []
        // 深度：单字符到最长count的字符
        for length in (1...s.count) {
            // 取出不同深度的子串
            for i in (0...(s.count - length)) {
                let startIndex = s.index(s.startIndex, offsetBy: i)
                let endIndex = s.index(s.startIndex, offsetBy: i + length)
                let subString = s[startIndex..<endIndex]
                subStrings.append(String(subString))
            }
        }
        return subStrings
    }
}

let s = "acbcd"
let start = Date()
let result = Solution().countSubstrings(s)
print(Date().timeIntervalSince(start))

print(result)

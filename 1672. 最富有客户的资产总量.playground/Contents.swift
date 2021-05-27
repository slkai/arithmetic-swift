class Solution {
    
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        
        var max: Int = 0
        for account in accounts {
            let wealth = maxWealth(account)
            if max < wealth {
                max = wealth
            }
        }
        return max
    }
    
    /// 账户总数
    func maxWealth(_ account: [Int]) -> Int {
        var tmp = 0
        for num in account {
            tmp += num
        }
        return tmp
    }
}


let accounts = [[1,2,3],[3,2,1]]
print(Solution().maximumWealth(accounts))

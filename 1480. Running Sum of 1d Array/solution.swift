class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var prev = 0
        var result:[Int] = []
        for num in nums {
            var sum = prev + num
            result.append(sum)
            prev = sum
        }
        return result
    }
}

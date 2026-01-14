class Solution {
    func maxOperations(_ nums: [Int], _ k: Int) -> Int {
        var count = 0
        var l = 0
        var r = nums.count-1
     var copy = nums.sorted()
        while l < r{
            let sum = copy[l]+copy[r]
            if sum == k {
                r-=1
                l+=1
                count+=1
            } else if sum > k{
                r-=1
            }
            else{
                l+=1
            }
        }

        return count
    }
}
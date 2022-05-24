class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {

    let times = k % nums.count
   
    let n = nums.count
   
    nums = Array(nums[n-times..<n]) + Array(nums[0..<n-times])
}
}


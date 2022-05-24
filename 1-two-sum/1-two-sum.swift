class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var nums = nums
        var newNums = nums.sorted()
        var firstIndex = 0
        var left = 0
        var right = newNums.count - 1
        
        while left < right{
            
            if newNums[left] + newNums[right] == target{
                
                if newNums[left] == newNums[right]{
                    firstIndex = nums.firstIndex(of: newNums[left])!
                    nums.remove(at: firstIndex)
                    return [firstIndex, nums.firstIndex(of: newNums[right])! + 1]
                }
                return [nums.firstIndex(of: newNums[left])!, nums.firstIndex(of: newNums[right])!]
                
            }
            else if newNums[left] + newNums[right] < target{
                left += 1
            }
            else if newNums[left] + newNums[right] > target{ 
            right -= 1
        }
        }
        
        return [nums[left], nums[right]]
    }
   
}

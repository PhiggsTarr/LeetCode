class Solution {
func findPeakElement(_ nums: [Int]) -> Int {
     guard nums.count > 2 else { return nums.firstIndex(of: nums.max()!)!}
    for (index, number) in nums.enumerated(){
       if index < nums.count - 1 && index > 0{
            if number > nums[index - 1] && number > nums[index + 1] {
                return index
            }
        }
        else if index == nums.count - 1 && number > nums[index - 1]{
                return index
            }
        }
    return 0
    
}
    
}
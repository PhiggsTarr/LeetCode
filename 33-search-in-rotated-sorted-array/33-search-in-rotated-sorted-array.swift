class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        guard Set(nums).contains(target) else {return -1}
        
        for (index, number) in nums.enumerated(){
            if number == target{
                return index
            }
        }
        return -1
    }
    
}
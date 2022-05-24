class Solution {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        let nums = Set(nums)
        
        for number in 1...Int.max{
            if !nums.contains(number){
                return number
            }
        }
        
    return 1
    }
}


// class Solution {
//     func firstMissingPositive(_ nums: [Int]) -> Int {
//         guard !nums.isEmpty else { return 1}
//         if nums == [0] { return 1}
    
//     if Set(Set(1...nums.max()!).sorted()) == Set(nums.filter{$0 > 0}.sorted()){
//         return nums.max()! + 1
//     }
        
//  return Set(nums.filter{$0 > 0}.sorted()).symmetricDifference(Set(1...nums.max()!)).min()!
//     }
//     }
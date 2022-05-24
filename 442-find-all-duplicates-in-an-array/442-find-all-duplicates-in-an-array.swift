class Solution {
     func findDuplicates(_ nums: [Int]) -> [Int] {
      return Array(Dictionary(nums.map{($0, 1)}, uniquingKeysWith: +).filter{$0.value > 1}.keys)
    }
}
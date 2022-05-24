class Solution {
    func numSub(_ s: String) -> Int {
        let sum = s.components(separatedBy: "0").flatMap{Array(0...$0.count)}.reduce(0, +)
        return sum > 1000000007 ? sum % 1000000007 : sum
        
    }
}

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
      return Dictionary(Array(s).map{($0, 1)}, uniquingKeysWith: +) == Dictionary(Array(t).map{($0, 1)}, uniquingKeysWith: +)
    }
}
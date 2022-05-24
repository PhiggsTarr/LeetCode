class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard let first = strs.first else { return "" }
        var currentPrefix = ""
        var bestPrefix = ""
        for letter in first {
            currentPrefix.append(letter)
            for word in strs {
                if !word.hasPrefix(currentPrefix) {
                    return bestPrefix
                }
            }
            bestPrefix = currentPrefix
        }
        return bestPrefix
        
    }
}

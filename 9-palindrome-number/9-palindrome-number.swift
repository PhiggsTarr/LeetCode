class Solution {
    func isPalindrome(_ x: Int) -> Bool {
    var string = String(x)
    
    for numbers in string{
        string.insert(numbers, at: string.startIndex)
        string.removeLast()
    }
        return  string == String(x)
    }
}
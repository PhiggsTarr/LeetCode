class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
         guard numRows > 0  else { return [[]]}
    if numRows == 1 {return[[1]]}
    
    var result = [[1, 1]]
    var pascalNumbers = [Int]()
    
    var numRows = numRows - 2
    for number in 0..<numRows{
        
        for index in 0..<result[number].count{
            
            if index < result[number].count - 1{
                pascalNumbers.append(result[number][index] + result[number][index + 1])
            }
            else{
                result.append(pascalNumbers)
                pascalNumbers = []
                result[number + 1].append(1)
                result[number + 1].insert(1, at: 0)
                break
            }
            
        }
    
    }
    result.insert([1], at: 0)
    return result
    }
}
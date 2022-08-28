class Solution {
    func checkValid(_ matrix: [[Int]]) -> Bool {
        let matrixCount = matrix[0].count
        let flat = matrix.flatMap{$0}
        var columnArray = [Int]()
        
        for numbers in matrix{
            if numbers.sorted() != Array(1...matrixCount){
                return false
            }
        }
        
        for numbers in 0..<matrixCount{
            
            for index in stride(from:numbers, to:flat.count, by: matrixCount){
                columnArray.append(flat[index])
            }
           
            if columnArray.sorted() != Array(1...matrixCount){
                return false
            }
            columnArray.removeAll()
            
        }
        return true
        
    }
}
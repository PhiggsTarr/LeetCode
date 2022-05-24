class Solution {
func findRepeatedDnaSequences(_ s: String) -> [String] {
        var dict = [String: Int]()
        let array = Array(s)
        var set = Set<String>()
        
        for (index,_) in array.enumerated(){
            if index + 9 < array.count{
               
               if dict[String(array[index...index + 9])] == nil{
                   dict[String(array[index...index + 9])] = 1
                   
               }else if dict[String(array[index...index + 9])]! == 1{
                   
                    set.insert(String(array[index...index + 9]))
                   
               }
            }
            else{
                return Array(set)
            }
            
        }
        return []
    }
}


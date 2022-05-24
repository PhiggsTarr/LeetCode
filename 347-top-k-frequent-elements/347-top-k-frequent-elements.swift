class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
         let mappedNums = nums.map{($0, 1)}
         let dict = Dictionary(mappedNums, uniquingKeysWith: +)
         let sortedString = dict.sorted{$0.value > $1.value}
         var returnArray = [Int]()
                for number in 0..<k{
        
        returnArray.append(sortedString[number].key)
    }
   
    return returnArray
    }
}
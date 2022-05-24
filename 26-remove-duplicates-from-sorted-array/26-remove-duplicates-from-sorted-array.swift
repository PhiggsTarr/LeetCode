class Solution {
    
func removeDuplicates(_ nums: inout [Int]) -> Int {
      var currentNumber = 0
    var counter = 0
      
      for (index,number) in nums.enumerated(){
          
          if index == 0{
          currentNumber = number
          }
          
          if number == currentNumber && index > 0{
              nums.remove(at: index - counter)
              counter += 1
          }else{
              currentNumber = number
          }
          
      }
    
    return nums.count
  }
}
  //   let nu = NSOrderedSet(array: nums).array
  //   print(nu)
  // return nu.count


//    guard nums.count > 1 else { return nums.count}
    
//     var numsCopy = [Int]()
    
//     for (index, num) in nums.enumerated(){
        
//         if index == 0{
//             numsCopy.append(num)
//             continue
//         }
        
//         if num == numsCopy.last{
//             continue
//         }
//         else{
//             numsCopy.append(num)
//         }
//     }
  //   let nu = NSOrderedSet(array: nums).array
  //   print(nu)
  // return nu.count
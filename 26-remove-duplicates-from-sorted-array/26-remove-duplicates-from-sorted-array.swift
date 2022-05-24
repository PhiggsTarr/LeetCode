class Solution {
        
func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard nums.count > 1 else { return nums.count}
    
    for (index, num) in nums.enumerated(){
        
         if index == 0{
            nums.append(num)
             nums.remove(at: 0)
            continue
        }
        
        if num == nums.last{
            nums.remove(at: 0)
            continue
        }
        else{
            nums.append(num)
            nums.remove(at: 0)
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
class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
            guard n != 1 else { return true}             
            guard n != 2 else { return true}
        var two = 2
        
        while two < n{
            two *= 2
            if two == n{
                return true
            }
        }
        
        return false
        
        
    }
    
//      func isPowerOfTwo(_ n: Int) -> Bool {
//              var n = Double(String("\(n).0"))!
//               guard n != 1 else { return true}
//               guard n != 2 else { return true}
              
              
//               while n > 2.0{
                  
//                   if n / 2.0 >= 2.0 {
//                       n = n / 2.0
//                   }else{
//                       break
//                   }
                  
//                     if n == 2.0{
//                       return true
//                   }
                 
                  
//               }
              
//               return false
        
//     }
    
    
//       func isPowerOfTwo(_ n: Int) -> Bool {
//          var n = n
//               guard n != 1 else { return true}
//               guard n != 2 else { return true}
              
              
//               while n > 2{
                  
//                   if n % 2 != 0 {
//                       return false
//                   }
                  
//                   if n / 2 >= 2 {
//                       n = n / 2
//                   }else{
//                       break
//                   }
//                   if n == 2{
//                       return true
//                   }
                  
//               }
              
//               return false
        
//     }
    
}
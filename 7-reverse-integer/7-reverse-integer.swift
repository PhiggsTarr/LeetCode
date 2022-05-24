class Solution {
    func reverse(_ x: Int) -> Int {
      var string = String(x)
    if string.first! == "-"{
        string.removeFirst()
    }
    for numbers in string{
        string.insert(numbers, at: string.startIndex)
        string.removeLast()
    }
    
    if x < 0{
          if 0 - Int(string)! < Int32.min{
              return 0
          }
          else{
              return 0 - Int(string)!
          }
      }
      else{
          if Int(string)! <= Int32.max && Int(string)! >= Int32.min{
              return Int(string)!
          }
          else{
              return 0
          }
      }
    }
}
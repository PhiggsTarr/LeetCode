class Solution {
    func myAtoi(_ str: String) -> Int {
      var str = str
   guard str.count > 0 else {return 0}
    var filtered = ""
    var counter = 0
    var noWhiteSpace = Array(str)
      for (index, whiteSpace) in noWhiteSpace.enumerated(){
          if whiteSpace == " "{
            noWhiteSpace.remove(at: counter)
          }
          else{
            str = noWhiteSpace.map{String($0)}.joined()
              break
          }
      }
filtered = str
   
    
guard filtered.count > 0 else { return 0}
var sign = ""
if filtered.first! == "-" || filtered.first! == "+"{
    sign = String(filtered.first!)
    filtered.removeFirst()
}
guard !filtered.isEmpty else {return 0}
var array = Array(filtered)

guard filtered.first! >= "0" && filtered.first! <= "9" else { return 0}

if filtered.contains(".") || filtered.contains(" "){
    
    for (index, element) in filtered.enumerated(){
        if element == "." || element == " "{
            array = Array(array[0..<index])
            break
        }
    }
}
let filteredNumberTwo = array.map{String($0)}.joined()
var filteredNumber = ""
for element in filteredNumberTwo{
    if element >= "0" && element <= "9"{
         filteredNumber.append(element)
    }
    else{
        break
    }
}
  if Int32(filteredNumber) == nil{
        if sign == "-"{
            return Int(Int32.min)
        }
        else{
            return Int(Int32.max)
        }
    }
        
let realNumber = Int(filteredNumber)!
guard 0 - realNumber >= Int32.min else {return Int(Int32.min)}
guard Int(String(sign + filteredNumber))! <= Int32.max else {return Int(Int32.max)}

if sign == "-"{
    return 0 - realNumber
}
return Int(String(sign + filteredNumber))!
        
    }
}
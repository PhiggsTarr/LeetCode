class Solution {
    func largestTimeFromDigits(_ arr: [Int]) -> String {
   guard arr.count == 4 else { return ""}
    let threeCount = arr.filter{$0 <= 3}
    let count = threeCount.count
    guard count > 0 else {return ""}
    if !threeCount.contains{$0 < 3} {return ""}
    let fiveCount = arr.filter{$0 <= 5}.count
    guard fiveCount > 0 else { return ""}
    let greaterThanFive = arr.filter{$0 > 5}
    
    if arr.contains(2) && arr.contains(3){
        if greaterThanFive.count == 2{
            return ""
        }
    }
    
    if greaterThanFive.count > 2{
        return ""
    }
    var sorted = arr.sorted()
    let secondSorted = sorted
    var zeroToMax = [0,1,2]
    var finalTime = [Int]()
    var finalArray = [Int]()
    
    if !threeCount.contains{$0 < 3}{
        return ""
    }
    if sorted.contains(where: {$0 < 3}){
        
    }
    
    while zeroToMax.count != 0{
        if sorted.contains(zeroToMax.last!){
            if zeroToMax.last! == 2{
                if !sorted.contains{$0 <= 3}{
                       return ""
                }else{
                    finalTime.append(zeroToMax.last!)
                    sorted.remove(at: sorted.firstIndex(of: zeroToMax.last!)!)
                    
                    let finalSorted = sorted.filter{$0 <= 3}.sorted()
                    if !finalSorted.isEmpty{
                         finalTime.append(finalSorted.last!)
                        sorted.remove(at: sorted.firstIndex(of: finalSorted.last!)!)
                        if finalTime == [2, 2]{
                            if !sorted.contains{$0 <= 5}{
                                return ""
                            }
                        }
                        let lessThanFive = sorted.contains{$0 <= 5}
                        if lessThanFive == true{
                            break
                        }
                        else{
                            var counter = 0
                            var array = secondSorted
                            
                            while counter < 2 {
                                
                                if counter == 0{
                                    if array.contains(1){
                                        finalArray.append(1)
                                        array.remove(at: array.firstIndex(of: 1)!)
                                    }else if array.contains(0){
                                        finalArray.append(0)
                                        array.remove(at: array.firstIndex(of: 0)!)
                                    }
                                }else if counter == 1{
                                    
                                    finalArray.append(array.filter{$0 <= 5}.first!)
                                    array.remove(at: array.firstIndex(of: finalArray.last!)!)
                                }
                                
                                counter += 1
                                if counter == 2{
                                    finalArray.insert(array[1], at: 1)
                                    finalArray.append(array[0])
                                    
                                    var returnString = finalArray.map{String($0)}.joined()
                                    returnString.insert(":", at: returnString.index(returnString.startIndex, offsetBy: 2))
                                    return returnString
                                }
                            }
                        }
                    }
                    else{
                        return ""
                    }
                }
            }
            else{
                sorted.remove(at: sorted.firstIndex(of: zeroToMax.last!)!)
                finalTime.append(zeroToMax.last!)
            }
            break
        }
        else{
            zeroToMax.removeLast()
        }
    }
    
    
    if finalTime.count == 1{
        
        finalTime.append(sorted.last!)
        sorted.remove(at: sorted.count - 1)
    }
    
    zeroToMax = [0,1,2,3,4,5]
    
    while zeroToMax.count != 0{
        print("true")
        if sorted.contains(zeroToMax.last!){
            
            
            sorted.remove(at: sorted.firstIndex(of: zeroToMax.last!)!)
            finalTime.append(zeroToMax.last!)
            
            
            break
        }
        else{
            zeroToMax.removeLast()
        }
    }
    
    
    finalTime.append(sorted.last!)
    sorted.remove(at: sorted.count - 1)
    
    
    if finalTime.count < 4{
        finalTime.append(sorted.last!)
        var returnString = finalTime.map{String($0)}.joined()
        returnString.insert(":", at: returnString.index(returnString.startIndex, offsetBy: 2))
        return returnString
    }
    else{
        print("Second \(finalTime)")
        var returnString = finalTime.map{String($0)}.joined()
        returnString.insert(":", at: returnString.index(returnString.startIndex, offsetBy: 2))
        return returnString
    }
    }
}
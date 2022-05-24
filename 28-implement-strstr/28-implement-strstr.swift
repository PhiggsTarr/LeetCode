class Solution {
   func strStr(_ haystack: String, _ needle: String) -> Int {
       guard needle.count <= haystack.count else { return -1}
       guard needle != "" else { return 0}
       guard haystack != "" else { return -1}
       
       if haystack.count == needle.count{
           if haystack != needle{
               return -1
           }
       }
       
       guard haystack.contains(needle) else { return -1}
       
       
       var haystackLetters = Array(haystack)
       var needleLetters = Array(needle)
       var counter = 0
       var firstIndexOf = haystackLetters.firstIndex(of: needle.first!)!
       
       while firstIndexOf < haystackLetters.count{
           
           if Array(haystackLetters[firstIndexOf..<firstIndexOf + needle.count]) == needleLetters{
               return firstIndexOf + counter
           }
           else{
               haystackLetters.remove(at: firstIndexOf)
               counter += 1
               
               if haystackLetters.firstIndex(of: needle.first!)! == nil{
                   return -1
               }else{
                   firstIndexOf = haystackLetters.firstIndex(of: needle.first!)!
               }
           }
       }
       return -1
   }
}
class Solution {
   func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var start: Int?
        var end: Int?
        var counter = 0

        while counter != nums.count {
            if nums[counter] == target {
                if start == nil {
                    start = counter
                } else {
                    end = counter
                
                }
            }
            counter += 1
        }

        return [start ?? -1, end ?? start ?? -1]
    }
}
/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        
        var start : Int = 1;
        var end : Int = n;
        
        while (start <= end)
        {
            var mid : Int = (start+end) / 2;
            if isBadVersion(mid){
             if !isBadVersion(mid - 1) {
                return mid;
            }else {
                end = mid - 1; 
            }
            }
            else {
             if isBadVersion(mid + 1) {
                return mid + 1;
            }else {
                 start = mid + 1;
            }
        }
        }
        return end;
       // return recursive(1,n);       
    }
    
    
    func recursive(_ start:Int, _ end:Int)->Int{
        var mid:Int = start + end / 2;
        if isBadVersion(mid) {
            if mid == start {
                return mid;
            }
            else if !isBadVersion(mid - 1) {
                return mid;
            }else {
                return recursive(1,end - 1);
            }
        }else {
             if isBadVersion(mid + 1) {
                return mid + 1;
            }else {
                return recursive(mid + 1,end);
            }
        }
    }
    
}
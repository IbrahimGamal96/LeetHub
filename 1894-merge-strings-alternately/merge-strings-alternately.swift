class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var char1 = Array(word1)
        var char2 = Array(word2)
        var  result = ""
        for  i in  0..<max(char1.count,char2.count) {
            if i<char1.count {
                result.append(char1[i])
            }
                
            if i<char2.count {
                result.append(char2[i])
            }
                
        }
        return result
    }
}
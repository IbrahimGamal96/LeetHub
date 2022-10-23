class Solution {
  bool isSubsequence(String s, String t) {
      if(s.isEmpty) return true;
      if(t.isEmpty) return false;
      int j=0;
      for(int i=0;i<t.length && j<s.length;i++)
      {
          if(s[j]==t[i]) j++;
      }
      return j == (s.length)?true:false;
  }
}

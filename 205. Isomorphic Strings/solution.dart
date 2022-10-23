class Solution {
  bool isIsomorphic(String s, String t) {
      final Map<String,String> map = {};
      for(int i=0;i<s.length;i++)
      {
          if(map.containsKey(s[i])||map.containsValue(t[i]))
          {
              if(map[s[i]] != t[i]) return false;
          }else{
              map[s[i]] = t[i];
          }
      }
      return true;

  }
}

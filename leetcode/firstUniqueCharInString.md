## First Unique Character in a String

Given a string, find the first non-repeating character in it and return its index. If it doesn't exist, return -1.

Examples:

s = "leetcode"
return 0.

s = "loveleetcode"
return 2.
 

Note: You may assume the string contains only lowercase English letters.

```
public class Solution {
    public int FirstUniqChar(string s) {
        
        if(s == null || s.Length == 0) return -1;
        
        int[] count = new int[26];
        
        for(int i = 0; i < s.Length; i++) {
            
            count[s[i] - 'a'] ++;
        }
        
        for(int i = 0; i < s.Length; i++) {
            
            if(count[s[i]-'a'] == 1){
                return i;
            }
        }
        return -1;
    }
}
```

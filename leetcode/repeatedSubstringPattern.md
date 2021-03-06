## Repeated Substring Pattern

Given a non-empty string check if it can be constructed by taking a substring of it and appending multiple copies of the substring together. You may assume the given string consists of lowercase English letters only and its length will not exceed 10000.

 

Example 1:

Input: "abab"

Output: True

Explanation: It's the substring "ab" twice.

Example 2:

Input: "aba"

Output: False

Example 3:

Input: "abcabcabcabc"

Output: True

Explanation: It's the substring "abc" four times. (And the substring "abcabc" twice.)

```
public class Solution {
    public bool RepeatedSubstringPattern(string s) {
        
        for(int i = s.Length/2; i >= 1; i--) {
            if(s.Length % i == 0) {
                int m = s.Length / i;
                string subString = s.Substring(0, i);
                StringBuilder sb = new StringBuilder();
                for(int j = 0; j < m; j++) {
                    sb.Append(subString);
                }
                
                if(sb.ToString() == s) return true;
            }             
        }
        
        return false;
    }
}
```

## Longest Common Prefix

Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".

Example 1:

Input: ["flower","flow","flight"]
Output: "fl"
Example 2:

Input: ["dog","racecar","car"]
Output: ""
Explanation: There is no common prefix among the input strings.
Note:

All given inputs are in lowercase letters a-z.

```
public class Solution {
    public string LongestCommonPrefix(string[] strs) {
        if(strs.Length == 0) return "";
        
        int index = 0;
        for(int i = 1; i < strs.Length; i++)
        {
            if(strs[index].Length > strs[i].Length) index = i;
        }
        
        for(int i = 0; i < strs[index].Length; i++) 
        {
            for(int j = 1; j < strs.Length; j++) {
                if(strs[0][i] != strs[j][i]) return strs[0].Substring(0, i);
            }
        }
        
        return strs[index];
    }
}
```

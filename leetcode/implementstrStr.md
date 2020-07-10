## Implement strStr()

Implement strStr().

Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

Example 1:

Input: haystack = "hello", needle = "ll"
Output: 2
Example 2:

Input: haystack = "aaaaa", needle = "bba"
Output: -1

```
public class Solution {
    public int StrStr(string haystack, string needle) {
        if(needle.Length == 0) return 0;
        
        for(int i = 0; i <= haystack.Length - needle.Length; i++)
        {
            int j =0;
            for(; j < needle.Length; j++)
            {
                if(haystack[i+j] != needle[j]) break;
            }
            if(j == needle.Length) return i;
        }
        
        return -1;
    }
}
```

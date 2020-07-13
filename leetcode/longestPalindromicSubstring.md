## Longest Palindromic Substring (Medium)

Given a string s, find the longest palindromic substring in s. You may assume that the maximum length of s is 1000.

Example 1:

Input: "babad"
Output: "bab"
Note: "aba" is also a valid answer.
Example 2:

Input: "cbbd"
Output: "bb"

```
public class Solution {
    public int index=0;
    public int longest = 0;
    
    public string LongestPalindrome(string s) {
        if(s == null || s.Length == 0) return "";
        
        
        for(int i = 0; i < s.Length; i++) {
            ExtendPalindrome(s,i,i); //odd
            ExtendPalindrome(s,i,i+1); //even
        }
        
        return s.Substring(index, longest);
    }
    
    public void ExtendPalindrome(string s, int left, int right){
 
        while(left>= 0 && right <s.Length && s[left]==s[right]) {
            left--;
            right++;
        }
        if(longest < right-left-1)
        {
            longest = right-left-1;
            index = left+1;
        }
    }
}
```


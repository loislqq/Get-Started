## Longest Palindrome

Given a string which consists of lowercase or uppercase letters, find the length of the longest palindromes that can be built with those letters.

This is case sensitive, for example "Aa" is not considered a palindrome here.

Note:

Assume the length of given string will not exceed 1,010.

Example:

Input:
"abccccdd"

Output:
7

Explanation:

One longest palindrome that can be built is "dccaccd", whose length is 7.

```
public class Solution {
    public int LongestPalindrome(string s) {
        int count = 0;
        HashSet<char> hash = new HashSet<char>();
        foreach(char ch in s) {
            if(hash.Contains(ch)) {
                hash.Remove(ch);
                count++;
            }
            else{
                hash.Add(ch);
            }
        }
        
        if(hash.Count == 0) return count*2;
        else return count*2 + 1;
    }
}
```

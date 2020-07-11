## Valid Anagram

What is Anagram?
- Two strings are anagram if they can be the same after change the order of characters.

Given two strings s and t , write a function to determine if t is an anagram of s.

Example 1:

Input: s = "anagram", t = "nagaram"
Output: true
Example 2:

Input: s = "rat", t = "car"
Output: false
Note:
You may assume the string contains only lowercase alphabets.

Follow up:
What if the inputs contain unicode characters? How would you adapt your solution to such case?

```
public class Solution {
    public bool IsAnagram(string s, string t) {
        if(s == null && t == null) return true;
        if(s == null || t == null) return false;
        if(s.Length != t.Length) return false;
        
        int[] count = new int[256];
        
        for(int i = 0; i < s.Length; i++) {
           count[s[i]-'a'] ++;             
        }
        
        for(int i = 0; i < t.Length; i++) {
            count[t[i]-'a'] --;
        }
        for(int i = 0; i < count.Length; i++) {
            if(count[i] != 0) return false;
        }
        
        return true;
    }
}
```

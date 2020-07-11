## Ransom Note

Given an arbitrary ransom note string and another string containing letters from all the magazines, write a function that will return true if the ransom note can be constructed from the magazines ; otherwise, it will return false.

Each letter in the magazine string can only be used once in your ransom note.

 

Example 1:

Input: ransomNote = "a", magazine = "b"
Output: false

Example 2:

Input: ransomNote = "aa", magazine = "ab"
Output: false
Example 3:

Input: ransomNote = "aa", magazine = "aab"
Output: true

```
public class Solution {
    public bool CanConstruct(string ransomNote, string magazine) {
        
        Dictionary<char, int> dict = new Dictionary<char, int>();
        
        foreach(char ch in magazine) {
            
            if(!dict.ContainsKey(ch)) dict.Add(ch, 1);
            else
                dict[ch] ++;
        }
        
        foreach(char ch in ransomNote) {
            
            if(!dict.ContainsKey(ch)) return false;
            
            dict[ch] --;
            
            if(dict[ch] < 0) return false;
        }
        
        return true;
    }
}
```

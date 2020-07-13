## Reverse Words in a String

Given an input string, reverse the string word by word.

 

Example 1:

Input: "the sky is blue"
Output: "blue is sky the"
Example 2:

Input: "  hello world!  "
Output: "world! hello"
Explanation: Your reversed string should not contain leading or trailing spaces.
Example 3:

Input: "a good   example"
Output: "example good a"
Explanation: You need to reduce multiple spaces between two words to a single space in the reversed string.

```
public class Solution {
    public string ReverseWords(string s) {
        
        if(s == null || s.Trim().Length == 0) return "";
        
        string[] words = s.Split(" ");
        StringBuilder sb = new StringBuilder();
        for(int i = words.Length-1; i >= 0; i--) {
            if(words[i].Length >0)
            {
                sb.Append(words[i]);
                sb.Append(" ");
            }
        }
        
        return sb.ToString().Trim();
    }
}
```

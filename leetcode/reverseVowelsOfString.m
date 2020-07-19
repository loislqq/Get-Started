## Reverse Vowels of a String

Write a function that takes a string as input and reverse only the vowels of a string.

Example 1:

Input: "hello"
Output: "holle"
Example 2:

Input: "leetcode"
Output: "leotcede"
Note:
The vowels does not include the letter "y".

```
public class Solution {
    public string ReverseVowels(string s) {
        if(s == null || s.Length == 0) return s;
        
        char[] chars = s.ToCharArray();
        string vowel = "aeiouAEIOU";
        
        int left = 0, right = chars.Length - 1;
        while(left < right) {
            
            while(left < right && !vowel.Contains(chars[left])){
                left++;
            }
            while(left < right && !vowel.Contains(chars[right])) {
                right--;
            }
            char temp = chars[left];
            chars[left] = chars[right];
            chars[right] = temp;
            left++;
            right--;
        }
        
        return new string(chars);
    }
}
```

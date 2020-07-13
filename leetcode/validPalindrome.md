## Valid Palindrome

Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

Note: For the purpose of this problem, we define empty string as valid palindrome.

Example 1:

Input: "A man, a plan, a canal: Panama"
Output: true
Example 2:

Input: "race a car"
Output: false

```
public class Solution {
    public bool IsPalindrome(string s) {
        if(s == null || s.Length == 0) return true;
        
        int left = 0;
        int right = s.Length - 1;
        
        while(left < right) {
            if(!Char.IsLetterOrDigit(s[left])) {
                left++;
                continue;
            }
            if(!Char.IsLetterOrDigit(s[right])) {
                right--;
                continue;
            }
            if(Char.ToLower(s[left]) == Char.ToLower(s[right])){
                left++;
                right--;
            }
            else {
                return false;
            }
        }

            return true;
    }
}
```

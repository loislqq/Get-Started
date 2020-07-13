## Valid Palindrome II

Given a non-empty string s, you may delete at most one character. Judge whether you can make it a palindrome.

Example 1:
Input: "aba"
Output: True
Example 2:
Input: "abca"
Output: True
Explanation: You could delete the character 'c'.
Note:
The string will only contain lowercase characters a-z. The maximum length of the string is 50000.

```
public class Solution {
    public bool ValidPalindrome(string s) {
        int left = 0;
        int right = s.Length -1;
        
        while(left < right)
        {
            if(s[left] != s[right]){
                return ValidPalindrome(s,left+1,right) || ValidPalindrome(s,left,right-1);
            }
            else {
                left++;
                right--;
            }
        }

        return true;
    }
    
    public bool ValidPalindrome(string s, int left, int right) {
        if(s.Length == 0) return true;
        while(left < right) {
            if(s[left] == s[right]) {
                left++;
                right--;
            }
            else return false;
        }
        return true;
    }
}
```

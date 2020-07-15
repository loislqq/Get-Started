## [String](./dataStructure.md)
### Top Methods

```
String s1 = new String();
String s2 = "billryan";
int s2Len = s2.length();
s2.substring(4, 8); // return "ryan"
StringBuilder s3 = new StringBuilder(s2.substring(4, 8));
s3.append("bill");
String s2New = s3.toString(); // return "ryanbill"
// convert String to char array
char[] s2Char = s2.toCharArray();
// char at index 4
char ch = s2.charAt(4); // return 'r'
// find index at first
int index = s2.indexOf('r'); // return 4. if not found, return -1
```

### Top Interview Questions


[1. Implement strStr()](../leetcode/implementstrStr.md)

[2. Valid Anagram](../leetcode/validAnagram.md)

[3. Ransom Note](../leetcode/ransomNote.md)

[4. Group Anagrams](../leetcode/groupAnagrams.md)

[5. Longest Common Substring (LintCode)](./longestCommonSubstring.md)

[6. Reverse Words in a String](../leetcode/reverseWordsInString.md)

[7. Valid Palindrome](../leetcode/validPalindrome.md)

[8. Valid Palindrome II](../leetcode/validPalindrome2.md)

[9. Longest Palindromic Substring](../leetcode/longestPalindromicSubstring.md)

[10. Space Replacement (LintCode)](./spaceReplacement.md)

[11. Length of Last Word](../leetcode/lengthOfLastWord.md)

[12. Count and Say](../leetcode/countAndSay.md)

[13. Defanging an IP Address](../leetcode/defangingAnIPAddress.md)

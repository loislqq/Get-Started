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
1. [ Implement strStr()](../leetcode/implementstrStr.md)
2. [ Valid Anagram](../leetcode/validAnagram.md)
3. [ Ransom Note](../leetcode/ransomNote.md)
4. [Group Anagrams](../leetcode/groupAnagrams.md)

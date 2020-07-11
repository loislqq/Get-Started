## Longest Common Substring (LintCode -- Medium)

Problem Statement
Given two strings, find the longest common substring.

Return the length of it.

Notice
The characters in substring should occur continuously in original string. This is different with subsequence.

Example

Given A = "ABCD", B = "CBCE", return 2.

Challenge **

O(n x m) time and memory.

### 暴力枚举
求最长公共子串，注意「子串」和「子序列」的区别！简单考虑可以暴力使用两根指针索引分别指向两个字符串的当前遍历位置，若遇到相等的字符时则同时向后移动一位。
```
public class Solution {
    /**
     * @param A, B: Two string.
     * @return: the length of the longest common substring.
     */
    public int longestCommonSubstring(String A, String B) {
        if ((A == null || A.isEmpty()) || 
            (B == null || B.isEmpty())) {
            return 0;
        }

        int lcs = 0;
        for (int i = 0; i < A.length(); i++) {
            for (int j = 0; j < B.length(); j++) {
                int lcs_temp = 0;
                while (i + lcs_temp < A.length() && 
                       j + lcs_temp < B.length() && 
                       A.charAt(i + lcs_temp) == B.charAt(j + lcs_temp)) {
                    lcs_temp++;
                }
                // update lcs
                if (lcs_temp > lcs) lcs = lcs_temp;
            }
        }

        return lcs;
    }
}
```

### 动态规划

题解1中使用了两根指针指向当前所取子串的起点，在实际比较过程中存在较多的重复计算，故可以考虑使用记忆化搜索或者动态规划对其进行优化。动态规划中状态的确定及其状态转移方程最为关键，如果直接以题目所求为状态，我们会发现其状态转移方程似乎写不出来，但退而求其次，我们不妨采用子串/子序列中常用的状态定义——『以(i,j)结尾(如 A[i-1], B[j-1])且其字符相等的子串lcs, 状态转移时只需判断两个字符串后一位字符是否相等，最后再次遍历二维状态数组即可。

```
public class Solution {
    /**
     * @param A, B: Two string.
     * @return: the length of the longest common substring.
     */
    public int longestCommonSubstring(String A, String B) {
        if ((A == null || A.isEmpty()) ||
            (B == null || B.isEmpty())) {
            return 0;
        }

        int n = A.length();
        int m = B.length();
        int[][] f = new int[n + 1][m + 1];

        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                if (A.charAt(i) == B.charAt(j)) {
                    f[i + 1][j + 1] = 1 + f[i][j];
                }
            }
        }

        // find max lcs
        int lcs = 0;
        for (int i = 1; i <= n; i++) {
            for (int j = 1; j <= m; j++) {
                if (f[i][j] > lcs) lcs = f[i][j];
            }
        }

        return lcs;
    }
}
```

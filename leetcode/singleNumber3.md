## Single Number III

Given an array of numbers nums, in which exactly two elements appear only once and all the other elements appear exactly twice. Find the two elements that appear only once.

Example:

Input:  [1,2,1,3,2,5]

Output: [3,5]

Note:

The order of the result is not important. So in the above example, [5, 3] is also correct.

Your algorithm should run in linear runtime complexity. Could you implement it using only constant space complexity?


```
public class Solution {
    public int[] SingleNumber(int[] nums) {
        
        int diff = 0;
        foreach(int num in nums) {
            diff = diff  ^num;
        }
        diff = diff & (-diff);
        
        int[] result = new int[2];
        foreach(int num in nums) {
            if((num & diff) == 0) {
                result[0] ^= num;
            }
            else {
                result[1] ^= num;
            }
        }
        
        return result;
    }
}
```

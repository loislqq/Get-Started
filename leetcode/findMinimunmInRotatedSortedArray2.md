## Find Minimum in Rotated Sorted Array II (Hard)

Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.

(i.e.,  [0,1,2,4,5,6,7] might become  [4,5,6,7,0,1,2]).

Find the minimum element.

The array may contain duplicates.

Example 1:

Input: [1,3,5]

Output: 1

Example 2:

Input: [2,2,2,0,1]

Output: 0

Note:

This is a follow up problem to Find Minimum in Rotated Sorted Array.

Would allow duplicates affect the run-time complexity? How and why?

```
public class Solution {
    public int FindMin(int[] nums) {
        if(nums == null || nums.Length == 0) return -1;
        int start = 0;
        int end = nums.Length - 1;
        
        while(start < end -1) {
            if(nums[start] < nums[end]) return nums[start];
            
            while((start < end) && (nums[start] == nums[start + 1])) start++;
            while((start < end) && (nums[end] == nums[end-1])) end--;
            
            int mid = start + (end - start)/2;
            if(nums[mid] < nums[start]) end = mid;
            else start = mid;
        }
        
        return Math.Min(nums[start], nums[end]);
    }
}
```

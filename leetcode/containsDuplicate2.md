## Contains Duplicate II

Given an array of integers and an integer k, find out whether there are two distinct indices i and j in the array such that nums[i] = nums[j] and the absolute difference between i and j is at most k.

Example 1:

Input: nums = [1,2,3,1], k = 3

Output: true

Example 2:

Input: nums = [1,0,1,1], k = 1

Output: true

Example 3:

Input: nums = [1,2,3,1,2,3], k = 2

Output: false

```
public class Solution {
    public bool ContainsNearbyDuplicate(int[] nums, int k) {
        HashSet<int> set = new HashSet<int>();
        
       for(int i = 0; i < nums.Length; i++) {
           if(i > k) set.Remove(nums[i-k-1]);
           if(set.Contains(nums[i])) return true;
           else set.Add(nums[i]);
       }
        
        return false;
    }
}
```

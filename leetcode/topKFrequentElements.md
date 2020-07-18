## Top K Frequent Elements (Medium)

Given a non-empty array of integers, return the k most frequent elements.

Example 1:

Input: nums = [1,1,1,2,2,3], k = 2
Output: [1,2]
Example 2:

Input: nums = [1], k = 1
Output: [1]
Note:

You may assume k is always valid, 1 ≤ k ≤ number of unique elements.
Your algorithm's time complexity must be better than O(n log n), where n is the array's size.
It's guaranteed that the answer is unique, in other words the set of the top k frequent elements is unique.
You can return the answer in any order.

```
public class Solution {
    public int[] TopKFrequent(int[] nums, int k) {
        
        Dictionary<int,int> dict = new Dictionary<int,int>();
        List<int> result = new List<int>();
        int max = 0;
        
        for(int i =0; i < nums.Length; i++) {
            if(!dict.ContainsKey(nums[i])) dict.Add(nums[i], 1);
            else {
                dict[nums[i]] ++;
            }
            if(dict[nums[i]] > max) max = dict[nums[i]];
        }
        
        Dictionary<int, List<int>> bucket = new Dictionary<int, List<int>>();
        
        for(int i =1; i <= max; i++) {
            bucket.Add(i, new List<int>());
        }
        
        foreach(int key in dict.Keys) {
            bucket[dict[key]].Add(key);
        }
        
        int last = max;
        
        while(k > 0 && last > 0) {
            int current = 0;
            if(bucket[last].Count > 0) {
                current = Math.Min(k, bucket[last].Count);
                for(int i = 0; i < current; i++) {
                    result.Add(bucket[last][i]);
                }
            }
            last --;
            k -= current;
        }
        
        return result.ToArray();
    }
}
```

## Contains Duplicate

Given an array of integers, find if the array contains any duplicates.

Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.

Example 1:

Input: [1,2,3,1]

Output: true

Example 2:

Input: [1,2,3,4]

Output: false

Example 3:

Input: [1,1,1,3,3,4,3,2,4,2]

Output: true

### HashSet
```
    public bool ContainsDuplicate(int[] nums) {
        HashSet<int> set = new HashSet<int>();
        
        foreach(int num in nums){
            if(set.Contains(num)) return true;
            else set.Add(num);
        }
        
        return false;
    }
```

### Sort the Array first, then search the duplicate
```
    public bool ContainsDuplicate(int[] nums) {
        Array.Sort(nums);
        for(int i = 1; i < nums.Length; i++) {
            if(nums[i] == nums[i-1]) return true;
        }
        
        return false;
    }
```

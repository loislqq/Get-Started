## Squares of a Sorted Array

Given an array of integers A sorted in non-decreasing order, return an array of the squares of each number, also in sorted non-decreasing order.

 

Example 1:

Input: [-4,-1,0,3,10]

Output: [0,1,9,16,100]

Example 2:

Input: [-7,-3,2,3,11]

Output: [4,9,9,49,121]
 

Note:

1 <= A.length <= 10000

-10000 <= A[i] <= 10000

A is sorted in non-decreasing order.

```
public class Solution {
    public int[] SortedSquares(int[] A) {
        int[] result = new int[A.Length];
        int low = 0;
        int high = A.Length - 1;
        
        for(int i = A.Length - 1; i >= 0; i--) {
            if(Math.Abs(A[low]) > Math.Abs(A[high])) {
                result[i] = A[low] * A[low];
                low++;
            }
            else {
                result[i] = A[high] * A[high];
                high--;
            }
        }
        
        return result;
    }
}
```

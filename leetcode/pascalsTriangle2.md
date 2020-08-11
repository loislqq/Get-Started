## Pascal's Triangle II

Given a non-negative index k where k ≤ 33, return the kth index row of the Pascal's triangle.

Note that the row index starts from 0.

In Pascal's triangle, each number is the sum of the two numbers directly above it.

Example:

Input: 3

Output: [1,3,3,1]

Follow up:

Could you optimize your algorithm to use only O(k) extra space?

```
public class Solution {
    public IList<int> GetRow(int rowIndex) {
        IList<int> list = new List<int>();
        
        for(int i = 0; i <= rowIndex; i++){
           list.Add(1);
            for(int index = list.Count -2; index > 0; index--) {
                list[index] = list[index] + list[index-1];
            }
        }
        
        return list;
    }
}
```

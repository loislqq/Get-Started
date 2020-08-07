## Pascal's Triangle

Given a non-negative integer numRows, generate the first numRows of Pascal's triangle.

Example:
```
Input: 5
Output:
[
     [1],
    [1,1],
   [1,2,1],
  [1,3,3,1],
 [1,4,6,4,1]
]
```

```
public class Solution {
    public IList<IList<int>> Generate(int numRows) {
        IList<IList<int>> result = new List<IList<int>>();
        
        for(int i = 0; i < numRows; i++) {
            IList<int> list = new List<int>();
            
            for(int j = 0; j < i + 1; j++) {
                if(j == 0 || j == i) list.Add(1);
                else {
                    list.Add(result[i-1][j-1] + result[i-1][j]);
                }
            }
            
            result.Add(list);
        }
        return result;
    }
}
```

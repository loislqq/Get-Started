## Count and Say

The count-and-say sequence is the sequence of integers with the first five terms as following:

1.     1
2.     11
3.     21
4.     1211
5.     111221
1 is read off as "one 1" or 11.
11 is read off as "two 1s" or 21.
21 is read off as "one 2, then one 1" or 1211.

Example 1:

Input: 1

Output: "1"

Explanation: This is the base case.

### Iteration
```
public class Solution {
    public string CountAndSay(int n) {
        StringBuilder result = new StringBuilder("1");
        
        for(int i = 1; i < n; i++) {
            result = GetNext(result);
        }
        
        return result.ToString();
    }
    
    public StringBuilder GetNext(StringBuilder current) {
        StringBuilder next = new StringBuilder();
        int count = 1;
        
        for(int i = 0; i < current.Length; i++) {
            if(i+1 < current.Length && current[i] == current[i+1])
            {
                count++;
            }
            else {
                next.Append(count);
                next.Append(current[i]);
                count = 1;
            }
        }
        return next;
    }
}
```
### Recursion
```
public class Solution {
    public string CountAndSay(int n) {
        if(n == 1) return "1";
        string seq = CountAndSay(n-1);
        StringBuilder result = new StringBuilder();
        int count = 1;
        
        for(int i = 0; i < seq.Length; i++){
            if(i+1 < seq.Length && seq[i] == seq[i+1]) {
                count++;
            }
            else {
                result.Append(count);
                result.Append(seq[i]);
                count = 1;
            }
        }
        
        return result.ToString();
    }
}
```

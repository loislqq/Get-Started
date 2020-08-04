Power Of Three

Given an integer, write a function to determine if it is a power of three.

Example 1:

Input: 27

Output: true

Example 2:

Input: 0

Output: false

Example 3:

Input: 9

Output: true

Example 4:

Input: 45

Output: false

Follow up:

Could you do it without using any loop / recursion?

### while loop
```
public class Solution {
    public bool IsPowerOfThree(int n) {
               
       while(n >= 3) {
           if(n % 3 != 0) return false;
           n = n / 3;
       }
        
        if(n == 1) return true;
        else return false;
    }
}
```

### Follow up: without loop/recursion

```
public class Solution {
    public bool IsPowerOfThree(int n) {
        //1162261467 is 3^19,  3^20 is bigger than int         
        return (n > 0 && 1162261467 % n == 0);
    }
}
```

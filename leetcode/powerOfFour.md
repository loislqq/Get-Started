## Power of Four

Given an integer (signed 32 bits), write a function to check whether it is a power of 4.

Example 1:

Input: 16

Output: true

Example 2:

Input: 5

Output: false

Follow up: Could you solve it without loops/recursion?

### while loop

```
public class Solution {
    public bool IsPowerOfFour(int num) {
        
        while(num >= 4) {
            if(num % 4 != 0) return false;
            num = num / 4;
        }
        
        if(num == 1) return true;
        else return false;
    }
}
```
### Follow up: without loops/recursion

```
public class Solution {
    public bool IsPowerOfFour(int num) {
        
        return num > 0 && (num & (num -1)) == 0 && ((num -1)%3 == 0);
    }
}
```


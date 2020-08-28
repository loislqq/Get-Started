## Implement Rand10() Using Rand7() (Medium)

Given a function rand7 which generates a uniform random integer in the range 1 to 7, write a function rand10 which generates a uniform random integer in the range 1 to 10.

Do NOT use system's Math.random().

 

Example 1:
```
Input: 1
Output: [7]
```
Example 2:
```
Input: 2
Output: [8,4]
```
Example 3:
```
Input: 3
Output: [8,1,10]
``` 

Note:

* rand7 is predefined.
* Each testcase has one argument: n, the number of times that rand10 is called.
 

Follow up:

* What is the expected value for the number of calls to rand7() function?
* Could you minimize the number of calls to rand7()?

```
/**
 * The Rand7() API is already defined in the parent class SolBase.
 * public int Rand7();
 * @return a random integer in the range 1 to 7
 */
public class Solution : SolBase {
    public int Rand10() {
        int Rand40 = 40;
        
        while(Rand40 >= 40) {
            Rand40 = (Rand7()-1) * 7 + Rand7() - 1;
        }
        
        return Rand40 % 10 + 1;
    }
}
```

###  Implement rand11() using rand3():
```
public int rand11() {
    int result = 22;
    while (result >= 22) {result = 3 * 3 * (rand3() - 1) + 3 * (rand3() - 1) + (rand3() - 1);}
    return result % 11 + 1;
}
```

### Implement rand9() using rand7():
```
public int rand9() {
    int result = 45;
    while (result >= 45) {result = 7 * (rand7() - 1) + (rand7() - 1);}
    return result % 9 + 1;
}
```

### Implement rand13() using rand6():
```
public int rand13() {
    int result = 26;
    while (result >= 26) {result = 6 * (rand6() - 1) + (rand6() - 1);}
    return result % 13 + 1;
}
```

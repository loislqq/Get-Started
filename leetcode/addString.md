## Add String

Given two non-negative integers num1 and num2 represented as string, return the sum of num1 and num2.

Note:

The length of both num1 and num2 is < 5100.
Both num1 and num2 contains only digits 0-9.
Both num1 and num2 does not contain any leading zero.
You must not use any built-in BigInteger library or convert the inputs to integer directly.

```
public class Solution {
    public string AddStrings(string num1, string num2) {
        
        StringBuilder result = new StringBuilder();
        
        int i = num1.Length - 1, j = num2.Length - 1, carry = 0;
        while(i >= 0 || j >= 0) {
            int sum = carry;
            if(i >= 0) {
               sum += num1[i] - '0'; 
                i--;
            } 
            if(j >= 0) {
                sum += num2[j] - '0';
                j--;
            } 
            result.Append(sum%10);
            carry = sum/10;
        }
        if(carry > 0) result.Append(carry);
        
        char[] charArray = result.ToString().ToCharArray();
        Array.Reverse(charArray);
        return new string(charArray);
    }
}
```

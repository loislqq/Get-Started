## Valid Parentheses

Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:

Open brackets must be closed by the same type of brackets.
Open brackets must be closed in the correct order.
Note that an empty string is also considered valid.

Example 1:

Input: "()"
Output: true
Example 2:

Input: "()[]{}"
Output: true
Example 3:

Input: "(]"
Output: false

```
public class Solution {
    public bool IsValid(string s) {
        if(s.Length == 0 || s == null)
        {
            return true;
        }
        
        Stack stack = new Stack();
        
        Dictionary<char,char> dict = new Dictionary<char,char>();
        dict.Add('(', ')');
        dict.Add('[', ']');
        dict.Add('{', '}');
               
        for(int i = 0; i < s.Length; i++){
            char current = s[i];
            
            if(dict.ContainsKey(current)){
                stack.Push(dict[current]);
            }
            
            else if(stack.Count > 0 && Convert.ToChar(stack.Peek()) == current)
            {
                stack.Pop();
            }
            else{
                stack.Push(current);
            }
        }
        
        if(stack.Count == 0) return true;
        else return false;
        
    }
}
```

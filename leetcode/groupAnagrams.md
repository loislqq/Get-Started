## Group Anagrams (Medium)

Given an array of strings, group anagrams together.

Example:

Input: ["eat", "tea", "tan", "ate", "nat", "bat"],
Output:
[
  ["ate","eat","tea"],
  ["nat","tan"],
  ["bat"]
]
Note:

All inputs will be in lowercase.
The order of your output does not matter.

```
public class Solution {
    public IList<IList<string>> GroupAnagrams(string[] strs) {
        
        IList<IList<string>> result = new List<IList<string>>();
        if(strs == null) return result;
        
        Dictionary<string, List<string>> dict = new Dictionary<string, List<string>>();
        foreach(string str in strs){
            char[] strChar = str.ToCharArray();
            Array.Sort(strChar);
            string strSorted = new string(strChar);
            
            if(!dict.ContainsKey(strSorted)) {
                List<string> list = new List<string>();
                list.Add(str);
                dict.Add(strSorted, list);
            }
            else{
                List<string> list = dict[strSorted];
                list.Add(str);
                dict[strSorted] = list;
            }
        }
        
        foreach(List<string> list in dict.Values) {
            result.Add(list);
        }
        
        return result;
    }
}
```

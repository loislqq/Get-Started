## Task Scheduler (Meduim)

You are given a char array representing tasks CPU need to do. It contains capital letters A to Z where each letter represents a different task. Tasks could be done without the original order of the array. Each task is done in one unit of time. For each unit of time, the CPU could complete either one task or just be idle.

However, there is a non-negative integer n that represents the cooldown period between two same tasks (the same letter in the array), that is that there must be at least n units of time between any two same tasks.

You need to return the least number of units of times that the CPU will take to finish all the given tasks.

 

Example 1:

Input: tasks = ["A","A","A","B","B","B"], n = 2

Output: 8

Explanation: 

A -> B -> idle -> A -> B -> idle -> A -> B

There is at least 2 units of time between any two same tasks.

Example 2:

Input: tasks = ["A","A","A","B","B","B"], n = 0

Output: 6

Explanation: On this case any permutation of size 6 would work since n = 0.

["A","A","A","B","B","B"]

["A","B","A","B","A","B"]

["B","B","B","A","A","A"]

...
And so on.

Example 3:

Input: tasks = ["A","A","A","A","A","A","B","C","D","E","F","G"], n = 2

Output: 16

Explanation: 

One possible solution is

A -> B -> C -> A -> D -> E -> A -> F -> G -> A -> idle -> idle -> A -> idle -> idle -> A

```
public class Solution {
    public int LeastInterval(char[] tasks, int n) {
        int[] count = new int[26];
        int max = 0;
        int maxCount = 0;
        
        foreach(char task in tasks) {
            count[task-'A']++;
            if(max < count[task-'A']){
                max = count[task-'A'];
                maxCount = 1;
            }
            
            else if(max == count[task-'A']) {
                maxCount++;
            }
        }
        
        int partCount = max -1;
        int partLength = n - (maxCount-1);
        int emptySlot = partCount * partLength;
        int availableTasks = tasks.Length - maxCount * max;
        int idles = Math.Max(0, emptySlot - availableTasks);
        
        return tasks.Length + idles;
    }
}
```

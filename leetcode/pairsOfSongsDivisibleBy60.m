## Pairs of Songs With Total Durations Divisible by 60

In a list of songs, the i-th song has a duration of time[i] seconds. 

Return the number of pairs of songs for which their total duration in seconds is divisible by 60.  Formally, we want the number of indices i, j such that i < j with (time[i] + time[j]) % 60 == 0.

 

Example 1:

Input: [30,20,150,100,40]
Output: 3
Explanation: Three pairs have a total duration divisible by 60:
(time[0] = 30, time[2] = 150): total duration 180
(time[1] = 20, time[3] = 100): total duration 120
(time[1] = 20, time[4] = 40): total duration 60
Example 2:

Input: [60,60,60]
Output: 3
Explanation: All three pairs have a total duration of 120, which is divisible by 60.

```
public class Solution {
    public int NumPairsDivisibleBy60(int[] time) {
        int result =0;
        int[] count = new int[60];
        
        for(int i = 0; i < time.Length; i++) {
            count[time[i] % 60] += 1;
        }
        
        if(count[0] > 0) {
            result += count[0] * (count[0] - 1) / 2;
        }
        if(count[30] > 0) {
            result += count[30] * (count[30] - 1) /2;
        }
        for(int i = 1; i < 30; i++) {
            result += count[i] * count[60 - i];
        }
        
        return result;
    }
}
```

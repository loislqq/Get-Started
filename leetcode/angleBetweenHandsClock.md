## Angle Between Hands of a Clock (Medium)
Given two numbers, hour and minutes. Return the smaller angle (in degrees) formed between the hour and the minute hand.

Input: hour = 12, minutes = 30
Output: 165

```
public class Solution {
    public double AngleClock(int hour, int minutes) {
        
        double h = (hour%12 * 30) + ((double)minutes/60 * 30);
        double m = minutes * 6;
        
        double angle = Math.Abs(m - h);
        
        if(angle > 180) angle = 360 - angle;
        
        return angle;
    }
}
```

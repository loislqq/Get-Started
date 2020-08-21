## Sort an Array (Medium)

Given an array of integers nums, sort the array in ascending order.

 

Example 1:
```
Input: nums = [5,2,3,1]
Output: [1,2,3,5]
```
Example 2:
```
Input: nums = [5,1,1,2,0,0]
Output: [0,0,1,1,2,5]
 ```

Constraints:

* 1 <= nums.length <= 50000
* -50000 <= nums[i] <= 50000

```
public class Solution {
    public int[] SortArray(int[] nums) {
        if(nums.Length <= 1) return nums;
        
        QuickSort(nums, 0, nums.Length -1);
        return nums;
    }
    
    public void QuickSort(int[] nums, int left, int right) {
        if(left >= right) return;
        int mid = Partition(nums, left, right);
        QuickSort(nums, left, mid);
        if(mid+1 <=right) {
            QuickSort(nums, mid+1, right);
        }
    }
    
    public int Partition(int[] nums, int left, int right) {
        int pivot = nums[left];
        while(left < right) {
            while(left < right && nums[right] >= pivot) {
                right--;
            }
            while(left < right && nums[left] < pivot) {
                left++;
            }
            if(left < right ) {
                int temp = nums[left];
                nums[left] = nums[right];
                nums[right] = temp;
            }
            else return left;
        }
        return left;
    }
}
```

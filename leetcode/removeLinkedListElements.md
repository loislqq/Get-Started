## Remove Linked List Elements

Remove all elements from a linked list of integers that have value val.

Example:

Input:  1->2->6->3->4->5->6, val = 6

Output: 1->2->3->4->5


### Dummy Node
```
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public int val;
 *     public ListNode next;
 *     public ListNode(int val=0, ListNode next=null) {
 *         this.val = val;
 *         this.next = next;
 *     }
 * }
 */
public class Solution {
    
    public ListNode RemoveElements(ListNode head, int val) {
       ListNode dummyNode = new ListNode(-1);
        dummyNode.next = head;
        ListNode prev = dummyNode;
        
        while(head != null) {
           if(head.val != val) {
               prev.next = head;
               prev = prev.next;
           } 
            head = head.next;
        }
        prev.next = null;
        
        return dummyNode.next;
    }
    
```


```
   public ListNode RemoveElements(ListNode head, int val) {
       
       while(head != null && head.val == val) head = head.next;
       
       ListNode current = head;
       while(current != null && current.next != null) {
           if(current.next.val == val) {
               current.next = current.next.next;
           }
           else{
               current = current.next;
           }
       }
       
       return head;
   }
    
}
```

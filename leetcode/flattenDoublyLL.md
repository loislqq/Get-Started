## Flatten a Multilevel Doubly Linked List (Medium)
You are given a doubly linked list which in addition to the next and previous pointers, it could have a child pointer, which may or may not point to a separate doubly linked list. These child lists may have one or more children of their own, and so on, to produce a multilevel data structure, as shown in the example below.

Flatten the list so that all the nodes appear in a single-level, doubly linked list. You are given the head of the first level of the list.

```
public class Solution {
    public Node Flatten(Node head) {
        if(head == null) return head;
        
        Node current = head;
        while(current != null)
        {
            if(current.child == null){
                current = current.next;
                continue;
            }
            
            Node temp = current.child;
            while(temp.next != null) temp = temp.next;
            temp.next = current.next;
            
            if(current.next != null) current.next.prev = temp;
            current.next = current.child;
            current.child.prev = current;
            current.child = null;
        }
        
        return head;
    }
}
```

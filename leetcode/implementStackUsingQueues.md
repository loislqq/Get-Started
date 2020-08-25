## Implement Stack using Queues

Implement the following operations of a stack using queues.

push(x) -- Push element x onto stack.

pop() -- Removes the element on top of the stack.

top() -- Get the top element.

empty() -- Return whether the stack is empty.

Example:
```
MyStack stack = new MyStack();

stack.push(1);
stack.push(2);  
stack.top();   // returns 2
stack.pop();   // returns 2
stack.empty(); // returns false
```
Notes:

* You must use only standard operations of a queue -- which means only push to back, peek/pop from front, size, and is empty operations are valid.
* Depending on your language, queue may not be supported natively. You may simulate a queue by using a list or deque (double-ended queue), as long as you use only standard operations of a queue.
* You may assume that all operations are valid (for example, no pop or top operations will be called on an empty stack).

```
public class MyStack {

    /** Initialize your data structure here. */
    
    public Queue<int> queue1;
    public Queue<int> queue2;
    
    public MyStack() {
        queue1 = new Queue<int>();
        queue2 = new Queue<int>();
    }
    
    /** Push element x onto stack. */
    public void Push(int x) {
        queue1.Enqueue(x);
    }
    
    /** Removes the element on top of the stack and returns that element. */
    public int Pop() {
        int temp = queue1.Dequeue();
        while(queue1.Count != 0) {
            queue2.Enqueue(temp);
            temp = queue1.Dequeue();
        }
        while(queue2.Count != 0) queue1.Enqueue(queue2.Dequeue());
        return temp;
    }
    
    /** Get the top element. */
    public int Top() {
        int temp = -1;
        while(queue1.Count != 0) {
            temp = queue1.Peek();
            queue2.Enqueue(queue1.Dequeue());        
        }
        while(queue2.Count != 0) queue1.Enqueue(queue2.Dequeue());
        return temp;
    }
    
    /** Returns whether the stack is empty. */
    public bool Empty() {
        return queue1.Count == 0;
    }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * MyStack obj = new MyStack();
 * obj.Push(x);
 * int param_2 = obj.Pop();
 * int param_3 = obj.Top();
 * bool param_4 = obj.Empty();
 */
```

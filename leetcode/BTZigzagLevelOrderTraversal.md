## Binary Tree Zigzag Level Order Traversal (Medium)

Given a binary tree, return the zigzag level order traversal of its nodes' values. (ie, from left to right, then right to left for the next level and alternate between).

For example:

Given binary tree [3,9,20,null,null,15,7],

return its zigzag level order traversal as:
[
  [3],
  [20,9],
  [15,7]
]

```
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public int val;
 *     public TreeNode left;
 *     public TreeNode right;
 *     public TreeNode(int val=0, TreeNode left=null, TreeNode right=null) {
 *         this.val = val;
 *         this.left = left;
 *         this.right = right;
 *     }
 * }
 */
public class Solution {
    public IList<IList<int>> ZigzagLevelOrder(TreeNode root) {
        IList<IList<int>> result = new List<IList<int>>();
        Queue<TreeNode> currentQueue = new Queue<TreeNode>();
        Queue<TreeNode> nextQueue = new Queue<TreeNode>();
        
        if(root != null) currentQueue.Enqueue(root);
        bool leftToRight = true;
        
        while(currentQueue.Count > 0) {
            IList<int> list = new List<int>();
            while(currentQueue.Count > 0) {
                TreeNode node = currentQueue.Dequeue();
                list.Add(node.val);
                if(node.left != null){
                    nextQueue.Enqueue(node.left);
                }
                if(node.right != null) {
                    nextQueue.Enqueue(node.right);
                }
            }
            foreach(TreeNode node in nextQueue) {
                currentQueue.Enqueue(node);
            }
            nextQueue.Clear();
                
            if(!leftToRight) {
               list = Enumerable.Reverse(list).ToList(); 
            } 
            
            result.Add(list);
            leftToRight = !leftToRight;      
        }
        
        return result;
    }
}
```

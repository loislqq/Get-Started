## Delete Node in a BST (Medium)

Given a root node reference of a BST and a key, delete the node with the given key in the BST. Return the root node reference (possibly updated) of the BST.

Basically, the deletion can be divided into two stages:

1. Search for a node to remove.
1. If the node is found, delete the node.

Note: Time complexity should be O(height of tree).

Example:
```
root = [5,3,6,2,4,null,7]
key = 3

    5
   / \
  3   6
 / \   \
2   4   7

Given key to delete is 3. So we find the node with value 3 and delete it.

One valid answer is [5,4,6,2,null,null,7], shown in the following BST.

    5
   / \
  4   6
 /     \
2       7

Another valid answer is [5,2,6,null,4,null,7].

    5
   / \
  2   6
   \   \
    4   7
```

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
    public TreeNode DeleteNode(TreeNode root, int key) {
        TreeNode pre = null;
        TreeNode cur = root;
        
        while(cur != null && cur.val != key) {
            pre = cur;
            if(key < cur.val) cur = cur = cur.left;
            else if(key > cur.val) cur = cur.right;
        }
        
        if(pre == null) return DeleteRootNode(cur);
        if(pre.left == cur) pre.left = DeleteRootNode(cur);
        else pre.right = DeleteRootNode(cur);
        
        return root;
    }
    
    private TreeNode DeleteRootNode(TreeNode root) {
        if(root == null) return null;
        if(root.left == null) return root.right;
        if(root.right == null) return root.left;
        
        TreeNode next = FindMin(root.right);
        next.left = root.left;
        
        return root.right;
    }
    
    private TreeNode FindMin(TreeNode root) {
        while(root.left != null) {
            root = root.left;
        }
        return root;
    }
}
```

## Construct Binary Tree from Inorder and Postorder Traversal (Medium)

Given inorder and postorder traversal of a tree, construct the binary tree.

Note:

You may assume that duplicates do not exist in the tree.

For example, given

inorder = [9,3,15,20,7]

postorder = [9,15,7,20,3]

Return the following binary tree:

```
    3    
   / \   
  9  20  
    /  \    
   15   7
   
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
    public Dictionary<int,int> dict = new Dictionary<int,int>();
    
    public TreeNode BuildTree(int[] inorder, int[] postorder) {
        for(int i = 0; i < inorder.Length; i++){
            dict.Add(inorder[i], i);
        }
        
        return BuildTreeFromInPost(inorder, postorder, 0, inorder.Length -1, postorder.Length-1);
    }
    
    private TreeNode BuildTreeFromInPost(int[] inorder, int[] postorder, int start, int end, int index) {
        if(start > end) return null;
        TreeNode root = new TreeNode(postorder[index]);
        int inRootIndex = dict[postorder[index]];
        root.right = BuildTreeFromInPost(inorder, postorder, inRootIndex+1, end, index -1);
        root.left = BuildTreeFromInPost(inorder, postorder, start, inRootIndex-1, index-(end-inRootIndex)-1);
        return root;
    }
}
```

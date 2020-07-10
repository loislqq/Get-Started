## Maximum Width of Binary Tree
Given a binary tree, write a function to get the maximum width of the given tree. The width of a tree is the maximum width among all levels. The binary tree has the same structure as a full binary tree, but some nodes are null.

The width of one level is defined as the length between the end-nodes (the leftmost and right most non-null nodes in the level, where the null nodes between the end-nodes are also counted into the length calculation.
``` 
public int WidthOfBinaryTree(TreeNode root) {
        return dfs(root, 0, 1, new List<int>());
    }
    
    public int dfs(TreeNode root, int level, int index, List<int> start)
    {
        if(root == null) return 0;
        if(start.Count == level)
        {
            start.Add(index);
        }
        
        int current = index - start[level] + 1;
        int left = dfs(root.left, level+1, 2*index, start);
        int right = dfs(root.right, level+1, 2*index +1, start);
        
        return Math.Max(current, Math.Max(left, right));
    }
```

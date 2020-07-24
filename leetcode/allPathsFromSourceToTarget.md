## All Paths From Source to Target
Given a directed, acyclic graph of N nodes.  Find all possible paths from node 0 to node N-1, and return them in any order.

The graph is given as follows:  the nodes are 0, 1, ..., graph.length - 1.  graph[i] is a list of all nodes j for which the edge (i, j) exists.

Example:

Input: [[1,2], [3], [3], []] 

Output: [[0,1,3],[0,2,3]] 

Explanation: The graph looks like this:

0--->1

|    |

v    v

2--->3

There are two paths: 0 -> 1 -> 3 and 0 -> 2 -> 3.

Note:

The number of nodes in the graph will be in the range [2, 15].

You can print different paths in any order, but you should keep the order of nodes inside one path.

```
public class Solution {
    public IList<IList<int>> AllPathsSourceTarget(int[][] graph) {
        IList<IList<int>> result = new List<IList<int>>();
        IList<int> list = new List<int>();
        list.Add(0);
        dfsSearch(graph, 0, result, list);
        return result;
    }
    
    public void dfsSearch(int[][] graph, int node, IList<IList<int>> result, IList<int> list) {
        if(node == graph.Length - 1) {
            result.Add(new List<int>(list));
            return;
        }
        foreach(int nextNode in graph[node]) {
            list.Add(nextNode);
            dfsSearch(graph, nextNode, result, list);
            list.RemoveAt(list.Count - 1);
        }
    }
}
```

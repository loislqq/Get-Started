## Word Search (Medium)

Given a 2D board and a word, find if the word exists in the grid.

The word can be constructed from letters of sequentially adjacent cell, where "adjacent" cells are those horizontally or vertically neighboring. The same letter cell may not be used more than once.

Example:

board =

[

  ['A','B','C','E'],
  
  ['S','F','C','S'],
  
  ['A','D','E','E']
  
]

Given word = "ABCCED", return true.

Given word = "SEE", return true.

Given word = "ABCB", return false.

 
```
public class Solution {
    public bool Exist(char[][] board, string word) {
        char[] w = word.ToCharArray();
        
        for(int i = 0; i < board.Length; i++) {
            for(int j = 0; j < board[0].Length; j++) {
                if (Exist(board, i, j, w, 0)) return true;
            }
        }
        
        return false;
    }
    
    public bool Exist(char[][] board, int i, int j, char[] word, int k) {
        if(k == word.Length) return true;
        if(i < 0 || j < 0 || i == board.Length || j == board[0].Length) return false;
        if(board[i][j] != word[k]) return false;
        board[i][j] = '*';
        bool result = Exist(board, i-1, j, word, k+1) || Exist(board, i+1, j, word, k+1) ||Exist(board, i, j-1, word, k+1) || Exist(board, i, j+1, word, k+1);
        board[i][j] = word[k];
        
        return result;
    }
}
```

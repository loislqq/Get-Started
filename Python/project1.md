# Milestone Project 1 -- Tic Tac Toe


```
def display_board(board):
    print(board[7] + '|' + board[8] +'|' + board[9])
    print('-|-|-')
    print(board[4] + '|' + board[5] +'|' + board[6])
    print('-|-|-')
    print(board[1] + '|' + board[2] +'|' + board[3])
    print('-|-|-')
```

```
def player_input():
    marker = 'wrong'
    while marker != 'X' and marker != 'O':
        marker = input('Do you want to be X or O?')
    player1_marker = marker
    if player1_marker == 'X':
        player2_marker = 'O'
    else:
        player2_marker = 'X'
    return (player1_marker, player2_marker)
```

```
def place_marker(board,marker,position):
    board[position] = marker
    display_board(board)
```

```
def win_check(board,mark):
    if board[1] == board[2]==board[3]==mark or board[4] == board[5]==board[6]==mark or board[7] == board[8]==board[9]==mark or board[3] == board[5]==board[7]==mark or board[1] == board[5]==board[9]==mark:
        return True
    else:
        return False
```

```
import random
def choose_first():
    if random.randint(1,2) == 1:
        print('Player 1 will go first')
    else:
        print('Player 2 will go first')
```

```
def space_check(board, position):
    if board[position] ==' ':
        return True
    else:
        return False  
```

```
def full_board_check(board):
    for index in range(1, 10):
        if board[index] == ' ':
            return False
    return True
```

```
def player_choice(board):
    position = 'wrong'
    while position not in range(1,10):
        position = int(input("Choose your next position:(1-9)"))
    if space_check(board,position) == True:
        return position
    
```

```
def replay():
    replay = 'wrong'
    while replay != 'yes' and replay != 'no':
        replay = input("Do you want to play again?(yes or no)")
    if replay == 'yes':
        return True
    else:
        return False
```

```
print('Welcome to Tic Tac Toe')
while True:
    board = [' ']* 10
    player1_marker, player2_marker = player_input()
    choose_first()
    if input('Are you ready to play?') == 'yes':
        display_board(board)
```


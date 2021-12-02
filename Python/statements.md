## Python Statements

### If Elif, and Else Statements in Python 

if/else statement

```
if some_condition:
  # execute some code
else:
  # do something else
```
```
if some_condition:
  # execute some code
elif some_other_condition:
  # do something different
else:
  # do something else
```
### For loops in Python 

```
my_iterable = [1,2,3]
for item_name in my_iterable:
  print(item_name)
```

Tuple unpack
```
mylist = [(1,2,3), (5,6,7), (8,9, 10)]
for a,b,c in mylist:
  print(b) 
```

Dictionary unpack
```
d = {'k1':1, 'k2': 2, 'k3': 3}
for item in d.items():
  print(item)
# output: ('k1', 1)
          ('k2', 2)
          ('k3', 3)

for item in d:
  print(item)
# output: k1
          k2
          k3

for key, value in d.items():   # Or for value in d.values()
  print(value)
# output: 1
          2
          3
```

### While loops in Python

```
while some_boolean_condition:
  do something
else:
  do something different
```

```
x = 0
while x < 5:
    print(f'The current value of x is {x}')
    x = x + 1
else:
    print('x is not less than 5')
```
### Break, continue, pass

1.. pass: Does nothing at all

```
x = [1,2,3]
for item in x:
    # comment
    pass
```
2. Continue: Goes to the top of current closest enclosing loop
```
mystring = 'Sammy'
for letter in mystring:
    if letter == 'a':
        continue
    print(letter)
```
3. Break: Breaks out of the current closest enclosing loop
```
x = 0
while x < 5:
    if x == 2:
        break
    print(x)
    x += 1
```
### Useful Operators

range
```
for num in range(0,10,2):
    print(num)

list(range(0,10,2)) # return a list
```
enumerate()
```
word = 'abcde'
for item in enumerate(word):
    print(item)  # return tuples
```
```
word = 'abcde'
for index,letter in enumerate(word):
    print(index)
    print(letter)
    print('\n')
```

zip(), zip the shortest length, ignore others
```
mylist1 = [1,2,3]
mylist2 = ['a', 'b', 'c']
mylist3 = [100,200,300]
for item in zip(mylist1, mylist2, mylist3):
    print(item)  # return tuples
```

shuffle(), does not have return value
```
from random import shuffle
mylist = [1,2,3,4,5,6,7,8,9,10]
shuffle(mylist)
```

randint()
```
from random import randint
num = randint(0, 100)
```
input()
```
result = input('Enter a number here:')
```

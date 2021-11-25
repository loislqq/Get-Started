# Python Object and Data Structure basics 


## Python Data Types

![image](https://user-images.githubusercontent.com/40484282/143388208-ef118faf-13d7-4bd3-a5b9-682c9d98b3fc.png)

## Python numbers

There are two main number types:
1. Integers which are whole numbers.
2. Floating point numbers which are numbers with a decimal

## variable assignment

![image](https://user-images.githubusercontent.com/40484282/143388807-9251291a-60a9-439e-80c5-251c9239b61b.png)

***Python uses Dynamic typing, this means we can reassign variables to different data types.***

this is OK in Python
```
my_dogs = 2
my_dogs = ["Sammy", "Franky"]
```

![image](https://user-images.githubusercontent.com/40484282/143390318-127ccb2d-b0a6-4ed4-8348-51e002bd374c.png)

## Strings

Strings are sequences of characters, using the syntax of either single quotes or double quotes
1. 'hello'
2. "Hello"
3. "I don't do that"

Because strings are ordered sequences, it means we can use indexing and slicing to grab sub-sections of the string.

## Indexing and slicing with strings

![image](https://user-images.githubusercontent.com/40484282/143390975-af6351d2-f576-442d-9a15-f2756c1a3967.png)

![image](https://user-images.githubusercontent.com/40484282/143391220-ae511a9d-b23e-4d86-9cf0-a8978b542a87.png)

```
mystring = "Hello World"
mystring[2]
mystring[-3]

mystring[2:]  # 'llo World'
mystring[:3]  # 'Hel'
mystring[1:4] # 'ell'
mystring[::2] # 'HloWrd'
```

## String Properties and Methods


### Immutability
To change name "Sam" to "Pam", we cannot do name[0] = 'P'

```
name = 'Sam'
last_letter = name[1:]
name = 'P' + last_letter
```

### Methods

```
mystring.upper()
mystring.lower()
mystring.split()
mystring.split('i')

```

## Print formatting with Strings

### Formatting with the .format() method

```
print('The {} {} {}'.format('fox', 'brown', 'quick'))

print('The {0} {1} {2}'.format('fox', 'brown', 'quick'))

print('The {q} {b} {f}'.format(f='fox', b='brown', q='quick'))
```

### Float formatting follows "{value:width.precision f}"
```
result = 100/777
print("The result was {r}".format(r = result))
print("The result was {r:1.3f}".format(r = result))
```

### f- strings (formatted string literals)
```
name = "Jose"
print("Hello, his name is {}".format(name))
print(f"Hello, his name is {name}") # Python new version
```

## Lists in Python

```
my_list = [1,2,3]
my_list = ["hi", 1, 4.5, "one"]
len(my_list)
my_list[1] = "there"

mylist = ['one', 'two', 'three']
another_list = ['four', 'five']
new_list = mylist + another_list
new_list.append('six')

new_list.pop() # pop the last item
item = new_list.pop()
new_list.pop(1) # index

new_list = ['e','a','x','g','s']
num_list = [5,2,0,9]

new_list.sort()
num_list.sort()
my_sorted_list = new_list

new_list.reverse()
```

## Dictionaries in Python

{'key1':'value1', 'key2': value2'}

When to choose a list and when to choose a dictionary
![different](./DictList.png)
